Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF9548FE36
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 18:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642354911;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6neTClAP6f5L4ABq6d0Op49BtIMsJPfjvhkauWbwI/4=;
	b=h3BIqfaB4riO86WBJ5t9ygX0Nw/1CvBYvJd4kG0D2o7be+eOEFcCMnrpj3N3T4QaDxQ8+C
	vtAUtKVUI96rHDUOVLbOSuv+0pYAWGfFnsT8bTztsl3bkG8ojS5uj5ICyPadIkVGNLpW85
	a0xz8IDdFwk1KEElihfl0vYj6zIJ1Vw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-266-QZ4IXfphPtqpHuzA0jMvDg-1; Sun, 16 Jan 2022 12:41:49 -0500
X-MC-Unique: QZ4IXfphPtqpHuzA0jMvDg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1E6B1006AA4;
	Sun, 16 Jan 2022 17:41:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71C347A424;
	Sun, 16 Jan 2022 17:41:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 85C7B4BB7C;
	Sun, 16 Jan 2022 17:41:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GHfeIr002706 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 12:41:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A0BBF2166B3F; Sun, 16 Jan 2022 17:41:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B44F2166B25
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:41:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 609CC3C11CF4
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:41:37 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-650-EzIVHFGKOsOvy_-2ElGHpg-1; Sun, 16 Jan 2022 12:41:35 -0500
X-MC-Unique: EzIVHFGKOsOvy_-2ElGHpg-1
Received: by mail-qt1-f174.google.com with SMTP id y17so16478795qtx.9
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 09:41:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=LRMAbMhJY946SMW1SVM1Cil+mA8ggam29gmsrtaueVc=;
	b=1ek/T14oMF79X/ZPEGd8QS9qvOk3LBRrSzZHODd8JEAEEXrLxkiloJTH634rjNyMio
	IV3IPtulI5IXM3S6V2t1UbEDMUDsIC5KPEBo9XRYWinBJ1Sxd3Rp6TiVAjj5r/xm3VJM
	wgIPG0Mzc2ZRhU2/TW6EuG+u1l9Hm1lQXF8KXcrN5Sr16kbfIcVRcmIrCR0DLmnfv9Pv
	a/EuzG+HsMGzVznw/5eV3Ar48Xzt3KWFlfIPqw9mi+8m3f6imSf/5rDbNQx/lveCKyM0
	UPgkN48l7JXNTH4td43Ymm356yUo/9wR+1tWiJ8rWUObuJNJbp+ORIzaLqB1dfCtXcFl
	gdNQ==
X-Gm-Message-State: AOAM531CnBogj2obsFSOa+4uJOBK9Z6HAiQDsxuf4GWIRDtCuFACkWY6
	sCnJipBKF7EDf2SUaOzMTMZRCNRPtjoQQw==
X-Google-Smtp-Source: ABdhPJwUN9LyUkGFZs+ICh6SJQVjWDavi/d+zuzEnxJ20rvA7/3T9k5nCLTTS3o7+XwHCvIk5Ni5CQ==
X-Received: by 2002:ac8:6d1c:: with SMTP id o28mr11985116qtt.656.1642354895175;
	Sun, 16 Jan 2022 09:41:35 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id h9sm7868629qkn.60.2022.01.16.09.41.34
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 09:41:34 -0800 (PST)
Message-ID: <8f6a2d85-911d-1cdd-2468-009f569774b0@gmail.com>
Date: Sun, 16 Jan 2022 12:41:34 -0500
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
	<e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
	<b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
In-Reply-To: <b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks Didier, I may accept your challenge, since as you have said, I 
can install Slint onto a USB drive and keep it separate from my working 
Fedora installation. Like Howard, I had no desire to put it into a 
virtual machine, not even under an already running Linux.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

