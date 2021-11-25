Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EF945DCD0
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 16:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637852576;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=blVPIyTLgsibrb1lcDUCo+5N5vszpwVhdt1+Nlu6Qtk=;
	b=ULjcfL0Q+d69F03A1ykkUZvJKSpUoUuXWitPJ7I6sv0kyP/mmKoTVuKLSnS/Sh6X1jTONg
	r9mwvDkMK1nPbXy1ZzZfClWE7EaiKp78IHyNILhfmWkWjEHQBbxMo1u/qXYG4B2SQrjgMg
	M6BjthfLqS4mkLymub20MLaktw36sSY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-406-cTMAQyIlN9iwWRaOcO3ioA-1; Thu, 25 Nov 2021 10:02:52 -0500
X-MC-Unique: cTMAQyIlN9iwWRaOcO3ioA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EBC5810168CB;
	Thu, 25 Nov 2021 15:02:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70DF060C05;
	Thu, 25 Nov 2021 15:02:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 86C3A4BB7C;
	Thu, 25 Nov 2021 15:02:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APF2fEQ010642 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 10:02:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F11242166B41; Thu, 25 Nov 2021 15:02:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA9AA2166B2F
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:02:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F2F708011A5
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 15:02:37 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-366-uPZYY0U0MVW3Kis0Y6F5nw-1; Thu, 25 Nov 2021 10:02:36 -0500
X-MC-Unique: uPZYY0U0MVW3Kis0Y6F5nw-1
Received: by mail-qt1-f174.google.com with SMTP id v22so6360834qtx.8
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 07:02:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:from:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ViM0oIJ3uy+nskbulP1M9A6+c/b/B7p5OuCDM4ft4Ik=;
	b=BYwb9Fgn4bTPT8NpeyeY+5c0zFMGramDOa2pUIJniksh3nVqN1ZBtNGwYzaGmfCyW3
	ma9cbRwEsmP3vHlMD1J8G8qmlbiqAHYHnlCQdJghgkrWF5m9c+oYwk1gHrqY6O3DRTkb
	Fq+COXWebECmo5UfzK9tgMZ9foUNgelRgMgSAhwc/Y1lFbg6x0ulFtMb9Uk/UeyvQd6P
	kUDW+QsCeTAWtNG5ok0bBj2oS9oDFsvDTzpWHIMk/+u+oOCqvHXGcITYsZaqA1fYYDb/
	UyG/Ydc1vqAZ0dn5Rj4c4TQ8QCSibAZJ7BbdAx6fcDDP9uGELPMyHEaqwM+tevOazPGD
	MIgg==
X-Gm-Message-State: AOAM533T21gxdI5STM1F0uh69R3nvCpGnQ0uv02q7t9txeFMx2mcQPdR
	KHjd5Brp4hnq8ld4wxtfSQcyb69LFJI=
X-Google-Smtp-Source: ABdhPJzkJjLHnsNqPDDZ0vOkNkdcIUMjyhfIMTmJa1/ql81fSeyCnoDUIykKixwLjol2TzJZNpR2IA==
X-Received: by 2002:a05:622a:1114:: with SMTP id
	e20mr9661641qty.427.1637852555697; 
	Thu, 25 Nov 2021 07:02:35 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	a17sm671417qkp.108.2021.11.25.07.02.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 25 Nov 2021 07:02:35 -0800 (PST)
Subject: Re: More Fedora ISO weirdness
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <184f5e9b-8258-63e9-b780-f52b2eb245a3@gmail.com>
	<003cadf3-7052-ceac-77a9-e797b74b26e6@gmail.com>
Message-ID: <8fb6ee03-276e-858a-4916-d86a0e337ef8@gmail.com>
Date: Thu, 25 Nov 2021 10:02:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <003cadf3-7052-ceac-77a9-e797b74b26e6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Since you do get sound on the Fedora 34 iso, one thing you may try is using the 
34 iso to chroot into your installed system and installing pulseaudio there. 
First, lsblk to find your hard disk, than do something like
sudo mount /dev/sdxn /mnt
where /dev/sdxn is the hard disk where Fedora was installed. Note that it may be 
called /dev/vdxn if running in a virtual machine. Now you can run
sudo chroot /mnt
dnf install --allowerasing pulseaudio
You can press control+d here to exit out of the chroot, and then you can restart 
the machine and boot from the hard disk. If all went well, you should get sound 
using pulseaudio instead of pipewire and wireplumber.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

