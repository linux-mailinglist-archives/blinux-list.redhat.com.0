Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 61CC53D2C8D
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 21:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626981311;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WtY6mqS3PqQp7qs6NMNkSFXj5GZVN/wPuYJrFK2Bq/g=;
	b=WJmeqg9QWYSEfULOgHfkl8cNVIZsjegzUP0UqV0g36InQQWgE3xRImW36f0d2aB7T0YlNr
	dRlEVhAA0wcnAvs4AtWhI348tpVAyw1dsqOvIoKU21uRQqo/Dn9nfhHzLPkRMgaOyYnynB
	zBi5EWCByTajlcWHnIOIfdDXt8eiGz0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-u3MtxrNeNTy48Fq6EXCttA-1; Thu, 22 Jul 2021 15:15:09 -0400
X-MC-Unique: u3MtxrNeNTy48Fq6EXCttA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E588693949;
	Thu, 22 Jul 2021 19:15:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 580EE2C6ED;
	Thu, 22 Jul 2021 19:15:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5DD8E180BAB0;
	Thu, 22 Jul 2021 19:15:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MJEvIC011553 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 15:14:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E0F33113B78; Thu, 22 Jul 2021 19:14:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC8C0113B6F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 19:14:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2683F80D2B6
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 19:14:54 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-319-iOqpkJvLNbCGpjLqEUpDhA-1; Thu, 22 Jul 2021 15:14:51 -0400
X-MC-Unique: iOqpkJvLNbCGpjLqEUpDhA-1
Received: by mail-ej1-f51.google.com with SMTP id hp25so33322ejc.11
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:14:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=g9fjXZu/T1aPxxr3gjHXcm0R4oQm0T7O++SqYMSdxUA=;
	b=XVIZ6N/WBV6F3sazM3acYasVsACx81LAIMORXcWI4ZJAdKUF59Jsaf11Wzf6FUQteL
	Qk/NpymVk8HeK75ZnzfJapKrn8/WzvhL1D6nIcNoF5dwF6EKZ+iYQRsSAKJu/Dw0oyBY
	IqV+KF63m5OTgR/Tp0DHG9EfjEASHXIkvkVNWSvWN/1aIDK+PhO0Nui/gwWslkn/Zbaf
	A2lqrVIooUL+gaGhn9DcGLjLtpGf/Tf65T5A9gKDCt1fcnHHlvhrxO4mDsaohCMSdVFQ
	rqzIxAZ0S9rM0AzcKAl8yitSCY7Fhv5xZEpyg+bPxJLwWc0EH0PcCU0FG0bt+Ukwc+nY
	vOLQ==
X-Gm-Message-State: AOAM533MKduB4/SabESxRMu9gBrFfXRiCI5fwHdr0XEnTxqe5qH0gaDO
	3e0mKHubYzHw8npdBUBCPixbWtC0Pxg=
X-Google-Smtp-Source: ABdhPJxrJD/bIncY/yt+8zabtpBiMs4CPrrAwmjPD8Zbd1j4yGlh83WisY9jOLZqY2c+B5uUGScsmA==
X-Received: by 2002:a17:906:a091:: with SMTP id
	q17mr1266991ejy.183.1626981289900; 
	Thu, 22 Jul 2021 12:14:49 -0700 (PDT)
Received: from smtpclient.apple ([197.185.105.92])
	by smtp.gmail.com with ESMTPSA id
	n13sm9753478ejk.97.2021.07.22.12.14.48 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Jul 2021 12:14:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Adjusting lightdm screenreader volume (How do I...)
Date: Thu, 22 Jul 2021 21:14:45 +0200
References: <b03aafa4-daf7-d333-f8dc-80aa029225c9@gmail.com>
	<210fc29d-9144-c009-3557-fd2304aa47cd@gmail.com>
	<6a20948b-bceb-bc96-c787-cf3f2c27c2af@gmail.com>
	<84a2815d-0461-28bc-8f52-6d0f24e34d60@gmail.com>
	<70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <70e8f011-eec9-ba77-f7e4-33bf3d610e33@gmail.com>
Message-Id: <9BB781F9-3AFD-4475-94BF-CB4DFE7329A6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I have done that in my Fluxbox, but for some reason ore other Orca seems to ignore my User settings in lightdm. If there is a way to fix this, I would be grateful.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 22 Jul 2021, at 21:06, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I have a laptop and use that layout, in which caps-lock is the 'orca' key.  On initial setup, I use
> 
> "orca --setup", (without the quotes) from the 'run' dialogue. This is the command line that will launch the preferences gui. Since you don't have an insert key, you may prefer the laptop layout.
> 
> 
> 
> HTH,
> 
> 
> 
> Dave  H.
> 
> 
> 
> 
> On 7/22/21 2:53 PM, Linux for blind general discussion wrote:
>> keyboard does not have an Insert key, that is why I don't simply open the Orca preferences. 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

