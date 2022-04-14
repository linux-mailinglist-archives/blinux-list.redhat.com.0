Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA2D501ACB
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 20:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649959734;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GUKH6fkm+xqQgXRivVx03so2qWXw2VVPrhG8etD5+Zw=;
	b=Jp5w7M9LtKzV3dePIXu4M2eWe+IfmElGtBK2mFqm9Ryn7f2QgOMHbd40UU1N6DJ4NI6b1h
	dCBpLIUhnUbYajwZmM7F8/UW2KLRdZZ05q4gcz9G6yKNB4KZQ/J4bjptLKG4wazVH+YqDT
	LMOsgjk96lRPkUeI7c8xTJDN7mk67u4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-447-3OaKoIgyNvetxtX5dqObhg-1; Thu, 14 Apr 2022 14:08:53 -0400
X-MC-Unique: 3OaKoIgyNvetxtX5dqObhg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74205811E80;
	Thu, 14 Apr 2022 18:08:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2CE4F492CA7;
	Thu, 14 Apr 2022 18:08:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9ECC1194034B;
	Thu, 14 Apr 2022 18:08:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 19:08:40 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: FYI - Command Line Programs for the Blind
References: <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8307.1649889026.111207.blinux-list@redhat.com>
 <mailman.8412.1649893760.111204.blinux-list@redhat.com>
 <mailman.8388.1649918679.111207.blinux-list@redhat.com>
 <mailman.8563.1649948774.111202.blinux-list@redhat.com>
 <mailman.8501.1649950048.111209.blinux-list@redhat.com>
 <CAO2sX318Qpucujy-HdYb8jKLv51c4PYHwwv6h7Ko1_YmXC5yiA@mail.gmail.com>
 <mailman.8733.1649957768.111210.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.8733.1649957768.111210.blinux-list@redhat.com>
Message-ID: <mailman.8695.1649959729.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes. Yes it is.

Then thoe same companies make it nigh impossible to opt out of their newsletters as well, which....yeah, whole other issue right there. Tell me why I should leap through a dozen hoops with a ball on my nose, doing a backflip in a tutu and wearing pom poms to even have a hope of finding the unsubscribe link to a newsletter, then have to do that all over again, while on hold with a customer support rep, change out my tutu for a Tinkerbell costume, flap the wings five times, dance the Macarena on one leg...and only then I /might/ get taken off the newsletter however.

Yes. That's the levels of hoop leaping I had to go through on my last one. Not literally, but that's about the level of hassle I had to go through. And after all that. I still kept getting newsletters. So what was the point of going through all that hassle?

On Thu, Apr 14, 2022 at 05:35:58PM +0000, Linux for blind general discussion wrote
> Forgot to mention, but yeah, it's annoying how many services insist on
> using a person's e-mail address or phone number as a unique
> identifier... its one thing if they have legitimate reason to contact
> you outside of their platform, but there's plenty that would function
> just fine knowing nothing about me beyond my username and password...
> and trying to force you to create an account just to use your computer
> just sounds ridiculous... on the flip side, I find it annoying how
> many e-mail newsletters ask for more than just my e-mail address when
> signing up. Is it too much to ask that web forms be both properly
> formatted and that they only collect essential information?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Jace's words are up there. Quoted and old messages below this point

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

