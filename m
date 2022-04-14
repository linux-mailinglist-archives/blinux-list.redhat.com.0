Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9407F5003AF
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 03:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649899989;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=14aYDXvKnhLl+9goFzh6DWmh7+Sz/aNBcgdR0yXKJOg=;
	b=U9WYcdL+WMfMqok7Lg+BiNwmycdsGigaRy+18fSyCXZKB3uQXCw8mgfE8ooWEdOR6swbkc
	O13tqX6Ei1eorRBzoDoJIr6U7kKLfQ9RkYdEkfF900/vH1GUVbmtiTtO+2TSy/rmba47Wu
	xYxi0r+EGl7CZllJxKARCV2toFhNZ8g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-495-6Phfmv8cPOS3b86wYVdHRg-1; Wed, 13 Apr 2022 21:33:06 -0400
X-MC-Unique: 6Phfmv8cPOS3b86wYVdHRg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F34B8811E76;
	Thu, 14 Apr 2022 01:33:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C0CD9C159B3;
	Thu, 14 Apr 2022 01:33:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 960BF1940353;
	Thu, 14 Apr 2022 01:33:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Re: FYI - Command Line Programs for the Blind
Date: Wed, 13 Apr 2022 20:34:14 -0500
MIME-Version: 1.0
In-Reply-To: <mailman.8423.1649899487.111202.blinux-list@redhat.com>
References: <mailman.8265.1649867972.111207.blinux-list@redhat.com>
 <mailman.8540.1649878555.111210.blinux-list@redhat.com>
 <mailman.8410.1649894371.111202.blinux-list@redhat.com>
 <mailman.8347.1649895046.111209.blinux-list@redhat.com>
 <mailman.8491.1649895487.111206.blinux-list@redhat.com>
 <mailman.8492.1649896846.111206.blinux-list@redhat.com>
 <mailman.8419.1649897313.111204.blinux-list@redhat.com>
 <mailman.8423.1649899487.111202.blinux-list@redhat.com>
User-Agent: POP Peeper Pro (5.2.2.0)
X-Spam-Flag: NO
Message-ID: <mailman.8564.1649899980.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sounds like your sound card keeps switching. Check aplay -l and set your module loading order so that the same card gets placed at index=0. Since it's a newer laptop it probably has HDMI, which is gobbling up the first slot.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Date: Wed, 13 Apr 2022 18:24:42 -0700 (PDT)
Subject: Re: FYI - Command Line Programs for the Blind

> Thank you Karen, Kyle, and the person who is deaf/blind, which had no name at
> an end of comments. Anyway, thank all of you for wonderful explainers on these
> conceppts. And no, Kyle, I didn't think you were swinging. And speaking of
> audio, I just got a newer laptop, which came with windows11pro, which we
> nuked-and-installed Debian SID. An installer has espeak guiding us, but once we
> need to reboot for changes to take affect, no more speech or sound. At times 1
> time a boot will have speech, but a majority of boots will not have any sound.
> How mysterious. Thanks in advance for any suggestions-and-please feel free in
> creating a new subject-line if you like as to not confuse others following this
> one.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

