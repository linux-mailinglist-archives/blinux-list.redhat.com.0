Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id B4B70207B8C
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 20:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593023461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HTtiQuWuK5yH+HaXBPLQMfJ5Y/AbkB3ETTRNLAufapA=;
	b=Fw0XdIC7jrGllj9q0PlrjSxg4QwdeN+gJYRmf286zZb1QG1wjYlT98svQZRjH5s4UINDD2
	SFBNS7ZWHGIvCvWLsPuKCpoQg90HQBlXhNQ2Bf38mSeMVWJSH/plBReouRlnqSSyYZiIYz
	rFcFf4FwjJcbZX/tN2Urrzk0sTxy7vA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-MaSGO46SPsW_1ynhjTP-aQ-1; Wed, 24 Jun 2020 14:30:59 -0400
X-MC-Unique: MaSGO46SPsW_1ynhjTP-aQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C0A3E107ACCA;
	Wed, 24 Jun 2020 18:30:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A5111F2;
	Wed, 24 Jun 2020 18:30:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 687C587588;
	Wed, 24 Jun 2020 18:30:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05OIUpAs017083 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 14:30:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E7EF7217B43D; Wed, 24 Jun 2020 18:30:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E4050217B43C
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:30:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7CBAC8007C8
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:30:46 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-200-ECSepvDLPpiUIkhS-ICwMw-1; Wed, 24 Jun 2020 14:30:44 -0400
X-MC-Unique: ECSepvDLPpiUIkhS-ICwMw-1
Received: by mail-qv1-f47.google.com with SMTP id cv17so1497222qvb.13
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 11:30:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:user-agent
	:mime-version;
	bh=SXz3ij3IMZifRzrcwD08LrGOBycJDJypKwiC4mcm+q8=;
	b=kMOglrX/N7fpfLojbBpSIQv91yLBPM8VrXbqT3mvrk63YzD7zz/ZFDvEz7m7NwdhE+
	rcnYVNSs6MQnYnbBdeMDvCg9SmF5TNYMdhZY6BKB62tYjk8iUJEUFp5RvIcxF7sHeZkj
	2n+uLjcfY80VmfzX1Jq2M4heYnyi6/ivq9p/ZORCBDCqZa7hYTk6xdgRaUrtLc/jQqs+
	YCbyiiKeWyDeFKcNqoaKRK2VyngdAjlBjlrWWvKv//kgOKpzqorwwfxBvBbxjNOFyPhf
	9gm9OnCXjBL/CksvCSRL7nyD55Z6Qf2W2q8eDDZkVNnINQEjLtinfAJOkur69fxdr2hk
	AP1Q==
X-Gm-Message-State: AOAM533YANTdfkUUqLwcqoHLRD4KT1bjtlOeCY4NOn7Sq+AXSDATy32M
	k5IhigT181mTaaeHZlc+J3B8WBWJa5k=
X-Google-Smtp-Source: ABdhPJzQZ12VtGKKD3Aw+lHgXYW7QIbdADRn0D0rY79SysBOKKNiwmlFF/XdOaE7ithNouPBHCRvLQ==
X-Received: by 2002:ad4:4a81:: with SMTP id h1mr17039806qvx.102.1593023443239; 
	Wed, 24 Jun 2020 11:30:43 -0700 (PDT)
Received: from dans-mac-mini.home (pool-74-98-254-52.pitbpa.fios.verizon.net.
	[74.98.254.52])
	by smtp.gmail.com with ESMTPSA id s17sm3528934qkj.1.2020.06.24.11.30.42
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 24 Jun 2020 11:30:42 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:30:40 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: vlc bookmarks
Message-ID: <alpine.OSX.2.22.394.2006241427390.7107@dans-mac-mini.home>
User-Agent: Alpine 2.22 (OSX 394 2020-01-19)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It can be done automattically when the video is next started without additional actions.  This explains:

Resume Playback From Last Played Position in VLC

https://www when the video is played again.makeuseof.com/tag/remember-playback-position-vlc/

On Tue, 23 Jun 2020, Linux for blind general discussion wrote:

> For command line users of vlc will it be possible to pause in a rather
> long mp3 file and save a bookmark at that spot then later return to that
> bookmark?
>
>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

