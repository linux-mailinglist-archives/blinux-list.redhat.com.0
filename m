Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F24748FDEB
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 17:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642351382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M+x83En3BVcDM2QQs/osIjFnMa8ILDvC02814G04Uyg=;
	b=Ki1HiGj7sqkk/wRcqUMrY6nPlok1WX5ydxXXOtMUIlIMyCG6EqBr4vWtutvDzcAf4rh0Y/
	/D/dy4n5kv3/aLXZsF8nQHQoz7CqnOMwDSZcPU66AXlQaeTFKVUbF1YB1/u5SUZ9FbERpO
	7Ul+j1TWxTKvQBRvDSmiYS33b9+WH6I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-340-1Vrqwic3MXWR2KRI2FiYPA-1; Sun, 16 Jan 2022 11:42:52 -0500
X-MC-Unique: 1Vrqwic3MXWR2KRI2FiYPA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B0134802924;
	Sun, 16 Jan 2022 16:42:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9027677C86;
	Sun, 16 Jan 2022 16:42:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09E6E1809CB8;
	Sun, 16 Jan 2022 16:42:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GGgfoX032090 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 11:42:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EEF4D492CA5; Sun, 16 Jan 2022 16:42:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E9B09492CA3
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 16:42:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5BCB8800B29
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 16:42:40 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-447-li9xS8kQMHm-5V-VwU3FYA-1; Sun, 16 Jan 2022 11:42:38 -0500
X-MC-Unique: li9xS8kQMHm-5V-VwU3FYA-1
Received: by mail-qk1-f176.google.com with SMTP id p9so1502187qkh.3
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 08:42:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=i88zoZT/Q11S4R1sXfjdYeSPZenXcY6/wXAFpfIjdnU=;
	b=J24oLGjZA6CMb/HEoO025uX6oi+DcoXsl9BzZ0a1JSP0skzdJt6TqAekItfXPLPghM
	eDr3KJ996NfBaG/VumtIEQX6STbsbiGjDfNIvkSAXEm0zTlkSwepBpGb2eez2y5AUJP9
	sOmjPiqjnBtPpHeXQZfYgIhWamqTM7Gfe4ye6fzexIlV//iWAEcPWU3hAnoPaZEtZ28k
	ITYdkwzxu27d0g+ydGO4sa5UOKj3MrNdiTv+NJ4MjFFFKtUe8v3RBIBUTunW+HHDyGvn
	KmQH9dzIpzOhlMmXMYAp2js56mmuTu6Q4QVcDZZUdMHYqyZhS6Kut4GmMyWk06DqbrKJ
	4NDw==
X-Gm-Message-State: AOAM531Mi731OwHo0eCtunr878UtxthEXi03rfYkxdFcVMKqklVpWtly
	lvwSSTjHDkdLXeA+kObvv1xftnT6dcbKmw==
X-Google-Smtp-Source: ABdhPJyZloU/mW6heIJfs6Gp/NRT0uc0Gfb7vYb0y2mu0inkiT5uXZiaNbhDfIrJWpCr0LlPhh1P6Q==
X-Received: by 2002:a05:620a:4148:: with SMTP id
	k8mr9692107qko.342.1642351357971; 
	Sun, 16 Jan 2022 08:42:37 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	bm30sm2626590qkb.86.2022.01.16.08.42.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 08:42:37 -0800 (PST)
Message-ID: <e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
Date: Sun, 16 Jan 2022 11:42:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
	<8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
In-Reply-To: <8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

Slint is essentially Slackware with a few modifications. I broke 
Slackware several times, which is actually why I left it early on. It 
was my first experience with Linux, but I wouldn't say it was my most 
enjoyable experience. I eventually broke things on purpose in other 
distributions in order to learn how to fix them, and I guess I can thank 
Slackware for that LOL. I actually found Red Hat, which became Fedora, 
to be one of the easiest to use out of the box, and it is kept updated 
better than Ubuntu, which is arguably one of the easiest of all to use 
overall. Actually, Arch is great once you get it going, but there is a 
lot that can break while you're installing, so I don't recommend it for 
people who just want to see what things look like. My personal 
recommendations for seeing what things look like and how well they work 
right out of the box would be either Fedora Live Workstation

https://dl.fedoraproject.org/pub/fedora/linux/releases/35/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-35-1.2.iso

or the version I personally use: Fedora Mate Compiz

https://dl.fedoraproject.org/pub/fedora/linux/releases/35/Spins/x86_64/iso/Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso

Both of these include the Orca screen reader on the iso itself. 
Workstation allows you to press alt+super+s to start Orca on the 
desktop, and MATE-Compiz starts it by pressing alt+f2 and entering

orca

in the run window that pops up. Either way, the installer is fairly easy 
to use, and I have successfully installed both to a hard drive and to a 
USB thumb drive without breaking anything. You can of course "try before 
you buy," just like you can with Ubuntu, meaning that you have full 
access to the system without installing to anything at all, and then if 
you decide you do want to install, you just start the installer and set 
it up according to your needs.


That said, Fedora and Ubuntu both have very large and helpful user 
bases, and community support is far easier to get when you need help. 
Ubuntu probably has the largest user base of all, and this is a good 
thing for those people who are getting started. I cannot overestimate 
the benefit of broad and diverse community support, and both Fedora and 
Ubuntu offer such support owing to their large numbers of users and 
their willingness to help each other. So based on this alone, I would 
recommend either Fedora or Ubuntu over just about anything else, and 
Fedora is my personal choice due to its frequent software updates even 
in a release.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

