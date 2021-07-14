Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 05C9A3C8306
	for <lists+blinux-list@lfdr.de>; Wed, 14 Jul 2021 12:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626259138;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tmMwbejXBtLza+4YPWX4w0YAvrBeW49n0LlW5hH7rqE=;
	b=eNjvkQtiiQ2d/quwb4XjxvU3y0c4ypdl3A3ieyxxepVkqp9H3ju08qFgieTZlukSsbmJBW
	inn4NrXiWlOVPUs3CyvgGrCXw80eSu1QkwWApY9thE/7KkzTv6UA+qU3U6JCVGkNjoarjs
	bX5sJJn+mAELS9jv7LZMqXV2lQJYYpM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-460-4v5dITj9Ogi47jo2pOipXg-1; Wed, 14 Jul 2021 06:38:56 -0400
X-MC-Unique: 4v5dITj9Ogi47jo2pOipXg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD3ED5074C;
	Wed, 14 Jul 2021 10:38:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 054FA100F49F;
	Wed, 14 Jul 2021 10:38:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 170904EA2F;
	Wed, 14 Jul 2021 10:38:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16EAbXMX006531 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 14 Jul 2021 06:37:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CFE1F1014613; Wed, 14 Jul 2021 10:37:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBC4E1017CD7
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 10:37:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E1CB4858F1C
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 10:37:30 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-370-BDmtatFxMi2n7YZHCem2hw-1; Wed, 14 Jul 2021 06:37:28 -0400
X-MC-Unique: BDmtatFxMi2n7YZHCem2hw-1
Received: by mail-wm1-f42.google.com with SMTP id w13so1262597wmc.3
	for <blinux-list@redhat.com>; Wed, 14 Jul 2021 03:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=7spElJTdUOpAp590APhURwCI0nqqM0D9lb150fU/ip4=;
	b=aeR0NjgCS1IdBLpirzMw9i/Jvo2rx3g8AP37O3Oum/4mX1FwfEFgG/I1NSTYK1PyZP
	GnyeXIPTa2tkRLB+Sh4jYlySQJW74iKhbtdZi1+MHIPvQQzVXoGaC9eR5VHmc7RD+Xue
	x6PIgae+I9UbTKs3qvFPQTijQHkiloMkoyUcYNLMlU9gFhrvmD/v37IoRAZVyhGTdEwk
	vlSO/CAjtp8yX4qxL78dazkzSfRMTWlq2Zu8E6GSs7xP9zNde5sMR2xKED9FIvvalR00
	mCY53P+9vaPgKKKapOcKevaFJRa3lC7xvS6rfGXslyV2hTNn5f7n0CbcoHH9m2TGGw0s
	PsBw==
X-Gm-Message-State: AOAM531nC5aHjSJl+h8sjaioppgGcvvo29nzb13xQ0YCBikVpGY0gpmv
	NFhjcHI8sYaufGMgdfgT0xEfBGy0I16faw==
X-Google-Smtp-Source: ABdhPJz5s3npVSTlF4+R/zU6pAOAYjxVtsCjeKCGqgoTdiwlqOOLroD/Ni6KeSICqNmQr2gFE19BXg==
X-Received: by 2002:a05:600c:ada:: with SMTP id
	c26mr3288297wmr.189.1626259047373; 
	Wed, 14 Jul 2021 03:37:27 -0700 (PDT)
Received: from [192.168.1.101] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id o11sm1631917wmq.1.2021.07.14.03.37.26
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Jul 2021 03:37:27 -0700 (PDT)
To: blinux-list@redhat.com
Subject: Arch Linux post installation issue
Message-ID: <005d101d-0a46-3f29-c74e-1dfb27441dc5@gmail.com>
Date: Wed, 14 Jul 2021 12:37:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: cs
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I don't know, if Talking arch mailing list still works, so I try to ask 
here.

I successfully installed Arch wit Gnome, using archinstall script. All 
works, but when I launch Orca, I get dummy. In additional packages, I 
wrote this:

orca speech-dispatcher espeak-ng brltty

so, what I missed? Archinstall script is perfect for Arch beginners, all 
works, but I need to find, why speech-dispatcher uses dummy at this time.

Thanks,

Pavel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

