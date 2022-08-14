Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FAB592627
	for <lists+blinux-list@lfdr.de>; Sun, 14 Aug 2022 21:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660504803;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=m0GYYjhritZj466ni83euqZFaW3FcIsvhACOCiFDSiI=;
	b=JJueDqy3xFaEm4FLlJYA5Fs/x5UB03SiLDDYqoyXVzABxzo877ZvInN1GvXESycJR4L0aw
	Q0uYJgSqFB9DkjVxJqJ1JZBy6pLwYnX6t+FhvIQMt+b95jtuMFMRAEe1AzZUsVjTa4SUdF
	Khcba0o6fF9DqNCpCuihsmXyuULihqk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-157-1aA8A6cnNuu7tgHDub4Diw-1; Sun, 14 Aug 2022 15:19:59 -0400
X-MC-Unique: 1aA8A6cnNuu7tgHDub4Diw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C557B801755;
	Sun, 14 Aug 2022 19:19:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 69F5B40D296D;
	Sun, 14 Aug 2022 19:19:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C9E291946A49;
	Sun, 14 Aug 2022 19:19:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: Matt Campbell <mattcampbell@pobox.com>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
References: <Pine.LNX.4.64.2208112229350.1215855@server2.shellworld.net>
 <YvhV4TWzuP2O1JAZ@novena-choice-citizen>
 <Pine.LNX.4.64.2208132205110.1261053@server2.shellworld.net>
 <8d72d3ff-01d5-9f5e-c2b1-fb10a024e047@pobox.com>
Autocrypt: addr=chris@the-brannons.com; prefer-encrypt=mutual; keydata=
 mDMEX37pCBYJKwYBBAHaRw8BAQdASkFrVm/MHGNpj7Oa+nq4b7eBg5LX5qnvS6ojH04ZE9+0LENo
 cmlzdG9waGVyIEJyYW5ub24gPGNocmlzQHRoZS1icmFubm9ucy5jb20+iJAEExYIADgWIQTFfzWT
 HzF7+QWPg09oJ1i8YNj4egUCX37pCAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRBoJ1i8
 YNj4esVsAQCJXDxhj5gZjcrNMmSH6Z+X5RDdbvsTRvS5wwQXM3g4kAEAjOrdx/fvZDiKL8dylDhU
 YUVVSkwWeOD2UtmYjm/QtwG4OARffukIEgorBgEEAZdVAQUBAQdAOMaQorDR8QUdM34/Q9mUyBvS
 9WFK0Mb76dHyNkERx2kDAQgHiHgEGBYIACAWIQTFfzWTHzF7+QWPg09oJ1i8YNj4egUCX37pCAIb
 DAAKCRBoJ1i8YNj4eo/8AQC4AX6NMv65KQQU7s95T/1Y4E+Z7KTbvhKJeSjdDfj88AEA/qzPnDvl
 dLmqqNTqsfZCK81teOxSoNhRlhWcQ8QQ/wY=
Date: Sun, 14 Aug 2022 12:13:03 -0700
In-Reply-To: <8d72d3ff-01d5-9f5e-c2b1-fb10a024e047@pobox.com> (Matt Campbell's
 message of "Sun, 14 Aug 2022 08:02:57 -0500")
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.1 (gnu/linux)
MIME-Version: 1.0
Message-ID: <mailman.585.1660504789.10506.blinux-list@redhat.com>
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
Cc: blinux-list@redhat.com, discuss@blvuug.org, speakup@linux-speakup.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Matt Campbell <mattcampbell@pobox.com> writes:

> I took this position in 2000, but for the last decade or more, access to a
> GUI has been widely available to blind people at no extra cost. (If there
> are blind people today who are truly stuck on old hardware with no
> accessible GUI, that's unfortunate, but I think this is one case where the
> best solution is charity, not expecting the rest of the world to accommodate
> this situation forever. That's no different than for sighted people stuck on
> very old hardware.)

I'm sorry, but this is a very irresponsible attitude, given the impact
of climate change.  And now on top of that, the world is coping with
supply chain issues.  "Chuck it in a landfill because it won't run the
latest Electron app" is deeply unacceptable.

I do agree with you about the importance of GUI accessibility, even
though I only use one when circumstances force me to it.  I'm somewhat
optimistic about the recent news.

-- Chris

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

