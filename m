Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AAE660876
	for <lists+blinux-list@lfdr.de>; Fri,  6 Jan 2023 21:50:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673038242;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/bWbTO1xk3enNPOuQHUr/aLnAdBw2jQdinruinMitvQ=;
	b=RdqSEyXBmvDD4kXNpIsb3/Kwx/zbiDIXAmjiaKPmWvOY7fxI5XWnUraGGvKV6/eA4SM6No
	7wLY6uCzGHBlGZXFTnaJgHFHU9ydjeaMUlsjQCxg8rqG6H0PxTwXousfLCC2dLFfpHiINm
	YV3pdlaUES2G7sdyQNZomQAE1+qUuus=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-cE7gDPhBP7qY3D8zOpf57g-1; Fri, 06 Jan 2023 15:50:39 -0500
X-MC-Unique: cE7gDPhBP7qY3D8zOpf57g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 33A4D101A52E;
	Fri,  6 Jan 2023 20:50:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C49F140C2004;
	Fri,  6 Jan 2023 20:50:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1F79F19459CC;
	Fri,  6 Jan 2023 20:50:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 6 Jan 2023 21:50:20 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: Speech-dispatcher problem
To: blinux-list@redhat.com
References: <mailman.3123.1672954986.2515665.blinux-list@redhat.com>
 <mailman.3118.1672957260.2515662.blinux-list@redhat.com>
 <mailman.3461.1673029986.2515658.blinux-list@redhat.com>
In-Reply-To: <mailman.3461.1673029986.2515658.blinux-list@redhat.com>
Message-ID: <mailman.3481.1673038231.2515669.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

[Lars]
> My problem may have to do with PipWire/Wireplumber. But I'm not able to debug the issue and find why the audio device cannot be opened.

Unfortunately I can't help then as I use Alsa and Pulse Audio, not PipeWire and
do not know how these things are managed on Fedora...

Also in the distribution I maintain (Slint) PulseAudio is started only on demand
(by applications that request it) not system wide and in case of Orca, alsa is
set by default in /etc/speech-dispatcher/speehchd.conf as AudioOutputMethod
(actually that's libao but which then use alsa as default driver, set in
/etc/libao.conf so redirects the audio files to alsa). As this configuration
differs probably a lot from the default one in Fedora I can't make useful tests,
sorry.

Maybe you could investigate how the default configurations differ between Fedora
35 and Fedora 36?

Cheers,
Didier
--
Didier Spaier
didieratslintdotfr



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

