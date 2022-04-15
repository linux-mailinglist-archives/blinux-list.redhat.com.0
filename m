Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6DC502121
	for <lists+blinux-list@lfdr.de>; Fri, 15 Apr 2022 05:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649995138;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YX3lVFv/g0cfTV1YT8FRuT4rVyAg11+v1G+yjVxfccc=;
	b=eQdR/kDZI7GpvszUrOAeqdOekGvwYzKBoxNrGyfakTocFZdIrA9W/DUxCgsKzR+IjzoS0h
	tZXAITNBtRfwgzqlTfAcMwwzqOoS4GnOoXCcNa8LcBfSbEJBhRXJ6ELRp3FJyZEBAK3DL9
	ZhaS5/I7aC73Sz9yCgc6WdJzyB9Kwlg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-269-m3TT9qW4P6666mlCZmOQdA-1; Thu, 14 Apr 2022 23:58:55 -0400
X-MC-Unique: m3TT9qW4P6666mlCZmOQdA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 21092185A794;
	Fri, 15 Apr 2022 03:58:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2704B2167D68;
	Fri, 15 Apr 2022 03:58:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8597F194034E;
	Fri, 15 Apr 2022 03:58:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Subject: Re: mailing list privacy, etc.
To: blinux-list@redhat.com
References: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
 <mailman.8699.1649970342.111206.blinux-list@redhat.com>
Date: Thu, 14 Apr 2022 23:58:41 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <mailman.8699.1649970342.111206.blinux-list@redhat.com>
Message-ID: <mailman.8427.1649995127.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi.


We're talking about sharing the name, not the email address. Sharing 
email addresses in these lists is a huge no no, but I can't see what's 
wrong with the name valiant8086 showing up in the emails and on any 
internet archives of it.


Cheers:
Aaron Spears, AKA Valiant8086 General Partner at Valiant Galaxy Associates "we make (VERY GOOD AUDIOGAMES) for the blind comunity" http://valiantGalaxy.com

On 4/14/2022 5:05 PM, Linux for blind general discussion wrote:
> I agree too. If we get spam, which I mean that happens regardless, from
> online account leaks of your email address, to going on dubious sites and
> submitting your email because you got a text saying you won $500, spam is
> gonna happen. If your mail provider, or mail server, or email client, can't
> deal with spam, usually by you marking an email from a sender as spam and
> the program automatically marking further messages from that sender as spam
> too, then that's a problem with your setup, not the list. Of course, I
> think this list is ran by RedHat, so who knows what wheels have to spin in
> the big corporation, or corpse as I like to call them, to get software on
> the mail server updated and this change made.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Thu, Apr 14, 2022 at 3:48 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> I'm in violent agreement with Didier's feelings about confusion between
>> posters in this mailing list.  Reading completely anonymous postings and
>> trying to figure out whether and how they relate to previous postings is a
>> real drag.  That said, I'm open to various ways it could be resolved.
>>
>> Regarding posters' desire to be anonymous, I'll point out (again :-) that
>> it would be fine for posters to use some sort of nickname, pseudonym, etc.
>> It only has to be unusual enough to let the reader tell various posters
>> apart.  So, for example, "Fred" isn't very useful, but "Fred123" or even
>> "abc123" would work just fine...
>>
>> - Rich Morin
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

