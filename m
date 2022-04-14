Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D04501C40
	for <lists+blinux-list@lfdr.de>; Thu, 14 Apr 2022 21:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649966252;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5C1eIMyu+bT4xzsl6w2myFWORq8hFzYskn0TEs6Plv0=;
	b=g2KMG7DICvTmqJc+nntaagHxEf8X/9cbyEcSe1Fk1hnS0ESwbBkdChXuO+Q+dQsya1q7Lo
	Q2I4XLV1Dwow4oo8jXO6vvKy+rfTxXtNHGIxxMCatyct7KbLEhqM03YIIYsLy1aNn2Rgun
	6CBfzoESZXlBzEni58c6K9Y3Md7WvBk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-580-Se5jtnMcNPuY9l7GF5qAew-1; Thu, 14 Apr 2022 15:57:28 -0400
X-MC-Unique: Se5jtnMcNPuY9l7GF5qAew-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E463E811E81;
	Thu, 14 Apr 2022 19:57:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CF353416148;
	Thu, 14 Apr 2022 19:57:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 96DB8194034F;
	Thu, 14 Apr 2022 19:57:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 14 Apr 2022 15:57:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: FYI - Command Line Programs for the Blind
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
 <mailman.8363.1649886716.111208.blinux-list@redhat.com>
 <mailman.8343.1649887607.111209.blinux-list@redhat.com>
 <mailman.8428.1649888423.111203.blinux-list@redhat.com>
 <mailman.8307.1649889026.111207.blinux-list@redhat.com>
 <mailman.8412.1649893760.111204.blinux-list@redhat.com>
 <mailman.8388.1649918679.111207.blinux-list@redhat.com>
 <mailman.8563.1649948774.111202.blinux-list@redhat.com>
 <mailman.8501.1649950048.111209.blinux-list@redhat.com>
 <CAO2sX318Qpucujy-HdYb8jKLv51c4PYHwwv6h7Ko1_YmXC5yiA@mail.gmail.com>
 <mailman.8733.1649957768.111210.blinux-list@redhat.com>
In-Reply-To: <mailman.8733.1649957768.111210.blinux-list@redhat.com>
Message-ID: <mailman.8524.1649966245.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

it's annoying how many services insist on using a person's e-mail 
address or phone number as a unique
> identifier... its one thing if they have legitimate reason to contact you outside of their platform, but there's plenty that would function just fine knowing nothing about me beyond my username and password...


The whole reason they want a phone number or email address has nothing 
to do with unique identifiers and everything to do with marketing, 
upselling and even selling that information to other companies and 
advertising networks. It's the same reason why they collect too much 
information when you actually want a newsletter and make it hard to opt 
out when you don't want the newsletter anymore. And it doesn't matter 
whether they are providing a free service or you're paying for it. 
Either way, they want every part of you that makes you you, even to the 
point of tracking things you do online, websites you visit, things you 
buy, even all those things you talk about in your private residence. 
It's all there for companies to listen to, and is all associated with a 
name, email and phone. Just think about all of this the next time you 
turn on a computer, start a mobile phone or even plug in that cute 
little voice assistant device that looks happy to help. It's happy all 
right. Happy to collect every word you say and either market you 
something or market you to other too big to fail companies. Fortunately 
my Linux computers and servers across the interwebs and my upgraded and 
deGoogled Android phone are not collecting information about me or 
anyone else in my house, at least not on the OS level.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

