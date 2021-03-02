Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7194132AB9D
	for <lists+blinux-list@lfdr.de>; Tue,  2 Mar 2021 21:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614717405;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XQNvpydetU+biP+JXjnX4P9ftp1jPX9xRiIm6qa14iU=;
	b=R2CEXWWro1xPKFkaYqUXzknWG5+4QwgNuse1NRoycZDIa0P4a3H5ggFtnuuMzNSo9rd+i6
	/B7Cf3Y4ZIsvHz9A5e7e4X3qCVge9FlLN0iq72P6K7SDakv7/QUi3SzaLbrkrRO3fUljhf
	qFRIpGr6KfD500mLqwQ1MZTnS6WEY/I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-NAPNKFk1Nr2rKbp9ScStwA-1; Tue, 02 Mar 2021 15:36:43 -0500
X-MC-Unique: NAPNKFk1Nr2rKbp9ScStwA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD3A9801982;
	Tue,  2 Mar 2021 20:36:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA41560BFA;
	Tue,  2 Mar 2021 20:36:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC83D4EEEC;
	Tue,  2 Mar 2021 20:36:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 122KaIEZ024420 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Mar 2021 15:36:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 480821065695; Tue,  2 Mar 2021 20:36:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 42EC5108449F
	for <blinux-list@redhat.com>; Tue,  2 Mar 2021 20:36:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E23F7800050
	for <blinux-list@redhat.com>; Tue,  2 Mar 2021 20:36:15 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-94-3lXc9t5CNjGpveymF8O9gQ-1; Tue, 02 Mar 2021 15:36:13 -0500
X-MC-Unique: 3lXc9t5CNjGpveymF8O9gQ-1
Received: by mail-wm1-f41.google.com with SMTP id w7so3315347wmb.5
	for <blinux-list@redhat.com>; Tue, 02 Mar 2021 12:36:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=xzZOjmHhEdJya8vEZ4ZX+grJT8KB9t4yuMeJ77y6mc0=;
	b=nPD3nwVcH7a3SLbLCcVuS+eSFZ7MhAxCNJjG8vpOp1KwtdeKosy8PkTT7TBoefB41X
	BWr9sogs/gZ7S/3mH8PPLFT09M7cXEH/HYfAVAWe9FHGZKRMp/5rGPSePXOt3S+Lv3+d
	eyU0zerGpcSmYqPvwHfhmzT9n9XkqwJZ38s4aNxNlL35ahFTdaqgAeA5gtW2Ad7gi4hn
	DzSJ3q2vWAbDnT+1LSw7GDCRKD4g8ZUQup2Rvmpp1zyilRngBzfclFvUCI6avFjEpD8b
	ADR5rnEzvoaviHP9szHa+lpjjZPj+0ZKyWslvOhv+Rh408K/NkMfybhKc4N7NKz9iBox
	lPJg==
X-Gm-Message-State: AOAM530/bpC9QG2iocD7sNP5g8xpNdKnkL198zI1VGIPD6BZaReK7Hwd
	wglhoan/GZ0PROygmmbhjkvaHgxxwjs=
X-Google-Smtp-Source: ABdhPJwAPkPV2YXzt0xf7voFoAm3QV/nF0zla67v0PkDcSNB/t10G21tvGC9VXGgmQOsDn0D4U32TQ==
X-Received: by 2002:a1c:a504:: with SMTP id o4mr5661481wme.174.1614717372544; 
	Tue, 02 Mar 2021 12:36:12 -0800 (PST)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id u2sm6922678wrp.12.2021.03.02.12.36.11
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Mar 2021 12:36:11 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Did Youtube get worse?
Message-ID: <c73e4b14-83ce-fba3-428d-81fb5986148f@gmail.com>
Date: Tue, 2 Mar 2021 20:36:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So as the subject says...is it just me, or is Youtube somehow worse? I 
mean. Before, I could tab to closed captions, settings, fullscreen and 
so forth. Now it just stops after the mute button/volume slider and 
refuses to go on.

Whiiiiich.....given Google's fuckery with autoplay now being in that 
bunch of buttons and on by default, is a problem, really. Mostly since 
now you can't easily turn it of. I know, I know, Youtube needs to ram 
adverts down our throats but...is this an Orca issue, a Firefox and 
Brave isue or...?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

