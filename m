Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DF54560F7
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 17:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637254442;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jNMSZrbFNXU2blkB5Ma4qciT6YcFbhqddq6vtLU0WFw=;
	b=aph2C3ahcwkTWXRrhHgjpSSsWyIk6H98ui14/RKQztjTnmeVccebARzcX7J6mztFSyFw6f
	wrxWyknUULbAZIHJJynEzy5QE7JBP1HIfm5w8lL4v5JQR6HOsCmBwfQmhOxcqp7d//OADy
	lu26WSmoc7LeZ02mMbZfncp7CVSV1Y0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-68-PqETgNZNO7irgaEU7NEJTw-1; Thu, 18 Nov 2021 11:53:58 -0500
X-MC-Unique: PqETgNZNO7irgaEU7NEJTw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 78DE3100D69C;
	Thu, 18 Nov 2021 16:53:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B4FE56A9D;
	Thu, 18 Nov 2021 16:53:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ED80A4EA62;
	Thu, 18 Nov 2021 16:53:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AIGrQkD031373 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Nov 2021 11:53:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F3171404727D; Thu, 18 Nov 2021 16:53:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFAB4404727A
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 16:53:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6D2C8564E2
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 16:53:25 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-65-hZsHG1_2O5CKtDJo1d787g-1; Thu, 18 Nov 2021 11:53:24 -0500
X-MC-Unique: hZsHG1_2O5CKtDJo1d787g-1
Received: by mail-qk1-f176.google.com with SMTP id t6so7081456qkg.1
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 08:53:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7jyyVBXHlOUkam+xMDfzo4IiDjy5eD2a2wWZO7eiezA=;
	b=UiFzJmdf5J+TOnXOkh794AGDBy/bP0KsRwXFsDLtbNoMmgit+7bDfhEZ/ipNzTVnmL
	8c2IyhcJBqirpYtNv/rpUqLCpryNcDGie/vh0xhNeqeKrODSHiXjgvGLdeVw039oLnAB
	ofxjO+sl3Ils8/rhp2B4TxM3fygfI+lgiDW2hGC56zRSYzC5c1NFqrk0akf0kuewenqv
	ma19xm6TgBuop3gxiUroceMPChU0ikGf5kFlH5AnDMgGwzzY/XXWigzolO6oKrPZHlPG
	aCkzYdVKY1GaS0vUEFy0MwaVSo4QXMzh6+F8FLaLzhK9Bb1dy3I9OVLBDVNBWxT9tQTX
	n9gA==
X-Gm-Message-State: AOAM531MblEwxZNUC3mrb931pFaznBUvgnRd+5ypJip1MgdFIq7W0Fcc
	vhjoQFZi2+iT6bRBNLMcxQy5B6Im/wCLhrnJ
X-Google-Smtp-Source: ABdhPJzAPUf1UpDbebYz5bVrynr3n1AVtQtXOl1d4loKp2c3YS8AYMTzSd2CXe6kA59aox5STo4u1g==
X-Received: by 2002:a37:6343:: with SMTP id x64mr21912816qkb.501.1637254403457;
	Thu, 18 Nov 2021 08:53:23 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	j13sm203778qkp.111.2021.11.18.08.53.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Nov 2021 08:53:23 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <6f1e4705-8453-2e88-18ae-980146e4be15@gmail.com>
	<9A8E294B-3690-46BC-8B52-E787FB7D6122@gmail.com>
	<9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
Message-ID: <33002db2-a9f2-32ab-67a6-d35a41496d7f@gmail.com>
Date: Thu, 18 Nov 2021 11:53:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9f3db659-4cc4-4f86-12d5-dc0ef2a95af0@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks Kyle,

I downloaded the Fedora Mate version and I put it on a bootable usb 
drive, then I ran it and got orca to talk. For whatever reason, the 
speech came out of my laptop built-in speakers, not through my headset 
as I prefer. Braille did not come up at all, although my vario ultra is 
connected. I hit insert space and checked the orca settings and found 
Braille enabled there. I find this strange. I did not have this problem 
with mint, or slint, or coconut. It looks that the fedora team needs to 
do a little more work to make it better.

Cheers,

Ibrahim

On 11/18/21 9:58 AM, Linux for blind general discussion wrote:
> Fedora doesn't need Speakup for the installation process. Just boot up 
> the live image, press alt+f2 and enter
> orca
> in the run window. Once Orca starts, you will find the installer on 
> the desktop if you're running the MATE version. If you run the GNOME 
> version, known as Fedora Workstation, you will need to hit the super 
> key and find the installer from there. The MATE desktop tends to have 
> better accessibility with Orca, so I use and highly recommend it. The 
> installer will see your USB drive, which you can configure for 
> automatic installation. Hope it helps.
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

