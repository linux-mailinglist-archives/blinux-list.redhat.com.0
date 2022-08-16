Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 263765957A6
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 12:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660644621;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=QG86teDR6DAgZKbOpk8IRzVunmE+VNJOISC+8zcGCoo=;
	b=QH4qKynNTFaHioDb/CjiY2kiWDF4o66KfzMt+UNrIIqV23mxF61aftXbJqhtGUb6g0JI0/
	rfNy09fWQTADAfHtfeCU0zpt6yni6cbxh3BB5wYhiOcdT+/5hcT+jIVY8+2yH8in2Nt7o0
	fogMeaHbbtPP7bDqKMERa4sraO2ifME=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-116-Y6rF0IvsMA62TQvlL3JGVQ-1; Tue, 16 Aug 2022 06:10:17 -0400
X-MC-Unique: Y6rF0IvsMA62TQvlL3JGVQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 896E0101A54E;
	Tue, 16 Aug 2022 10:10:16 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 38B5A14152E0;
	Tue, 16 Aug 2022 10:10:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6A1FA1940356;
	Tue, 16 Aug 2022 10:10:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Impossible to know sender info
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
Autocrypt: addr=chris@the-brannons.com; prefer-encrypt=mutual; keydata=
 mDMEX37pCBYJKwYBBAHaRw8BAQdASkFrVm/MHGNpj7Oa+nq4b7eBg5LX5qnvS6ojH04ZE9+0LENo
 cmlzdG9waGVyIEJyYW5ub24gPGNocmlzQHRoZS1icmFubm9ucy5jb20+iJAEExYIADgWIQTFfzWT
 HzF7+QWPg09oJ1i8YNj4egUCX37pCAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBoJ1i8
 YNj4esVsAQCJXDxhj5gZjcrNMmSH6Z+X5RDdbvsTRvS5wwQXM3g4kAEAjOrdx/fvZDiKL8dylDhU
 YUVVSkwWeOD2UtmYjm/QtwG4OARffukIEgorBgEEAZdVAQUBAQdAOMaQorDR8QUdM34/Q9mUyBvS
 9WFK0Mb76dHyNkERx2kDAQgHiHgEGBYIACAWIQTFfzWTHzF7+QWPg09oJ1i8YNj4egUCX37pCAIb
 DAAKCRBoJ1i8YNj4eo/8AQC4AX6NMv65KQQU7s95T/1Y4E+Z7KTbvhKJeSjdDfj88AEA/qzPnDvl
 dLmqqNTqsfZCK81teOxSoNhRlhWcQ8QQ/wY=
Date: Tue, 16 Aug 2022 03:10:00 -0700
In-Reply-To: <mailman.708.1660592109.10505.blinux-list@redhat.com> (Linux for
 blind general discussion's message of "Mon, 15 Aug 2022 21:35:05
 +0200")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Message-ID: <mailman.894.1660644607.10504.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This list is essentially dead to me from 2017 onward, due to the sender
info masking.  I could be down with stripping the email address, but
stripping the name makes conversation very difficult.

While I'm here, I'll plug my own mailing list, discuss@blvuug.org.
BLVUUG is the Blind and Low Vision Unix Users' Group.

-- Chris

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

