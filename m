Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD2D7BB02D
	for <lists+blinux-list@lfdr.de>; Fri,  6 Oct 2023 03:56:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696557403;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=clevs8TNFMPRrXxxxx4QIfD/NCoHXexIVgQJHuL+yn8=;
	b=L/iljCdP97hWqIOalskXgSSIqndEkr5j8gPW5kKIvMj4EGg9yV4XnvIPWFwpQ5ndaKGnF/
	kFVe2YN9GkJf+PFNNspBtuRgBdjCN3Uk7KBFs9iOYEhwwXgMZUbMNBcbvMrjamlyXLWunu
	ntzZ764Nxt6qxJMRGoeL18N7QIOiWIQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-282-p4uJ-0G7PXiQjqF_JxTr6g-1; Thu, 05 Oct 2023 21:56:40 -0400
X-MC-Unique: p4uJ-0G7PXiQjqF_JxTr6g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5FC04101A599;
	Fri,  6 Oct 2023 01:56:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 921C3140E953;
	Fri,  6 Oct 2023 01:56:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 508F019465B1;
	Fri,  6 Oct 2023 01:56:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 5 Oct 2023 21:51:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: Intro.
To: blinux-list@redhat.com
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.1194.1696432221.2981446.blinux-list@redhat.com>
 <mailman.1491.1696488824.2981442.blinux-list@redhat.com>
 <mailman.1527.1696543276.2981446.blinux-list@redhat.com>
 <mailman.1613.1696549801.2981449.blinux-list@redhat.com>
In-Reply-To: <mailman.1613.1696549801.2981449.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:m4f7TYZsGow=;3BKzK1G8bg3EIX9g3iECfzOstM7
 Ogz5GhELaENHRRb7lpdt+Mo+Rcn3uNeZC8uwlYyh8JlpXiH1coFvfW2YeXvDpmetuvne/X1XB
 9/aciASSJoxN2pf9wCp7Ly12afaVAyf3qQYM5xsoNAIedIUJ72iqPOYl4FFBFe0mRehAl+vHP
 x4wxk03BcUsxKKrFILpEmgI2Dc8W+RgamNClESeBl78p7U0zrO+51SKxgI8mU3PoUvVwT4+65
 wgqy6v/NmAM7NYaN7vYSVa/V/oJkPg2xwfEXzCOXe/ah9Sk2nC1XdqH/C3dieJKk0mHBkYAR6
 tjtPdpCB31dCd9xWMOMUlH422UXKX/06S+GVhnSTNtryPkBOEmLwgpAoFw6elszpcaCMZNxNj
 9n3t3XlJtJ2yI2yq7rhklHrwZ00/E/i3e0Pf3/6fAVYFVA4Z9GREDB6yBR4QuVtG0FvfnuvNW
 Lbnk/c0N7sfi1Jrvzm8VTp5hAVdFJnNLPORtYLW5hxxZZTyTuUULM9oiXHOIg1FwZGw0stpup
 7jUPEM4St0O41hJwxqr4VPQtXQNC8Y/tWUL82VWTJF4dolg0uPAE9tPIF3rhLcreKjH0xmV5f
 3Kqj/FuEf4RxdAHtlVkwCj0bEy1Oje8AMVlH9Fe2GyX4ZvvKl05OfhRvUgefV3DqacdEB7nEA
 dZYrNkSHpRC0yfY2VigoADZ1TSJQfKQ86I1t4BnSCWzGM3rAjtpr9xEQVQG7Ary13SsVNreIA
 lmojlDj55NsYMMsRWsK+/kjzzpT81NUISyU/w0rctNgFs3x7Z8g8ypGXPlGIWvKJPpnsn4M6m
 UDNZg6IJIZht9k/pEYuqLMp9xO4o716Fssgl9B678Xopz3gxLV5JaS8BQFd03MfohZRdh1Kxr
 2wnHP/nFZ6Tq81ABbS4OUi1GMPmDYT/qJLoHtO/4hL6SgTea9VVF6F1t2nSWOe5WMhNYFHRFg
 hTJWbrvUf/N0mWHLa495g062JSQ=
Message-ID: <mailman.1654.1696557392.2981444.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

> If you don't enjoy learning new skills, then Linux may not be a good
> choice, unless you have someone available to set it up, customize and
> maintain it for you.


I disagree. This certainly was the case in the late 1990's and very
early 2000's, when Linux was pretty much just DOS on steroids and we had
to learn how to compile a kernel just to get a decent screen reader
working. In 2023 however, only the Linux Foundation, which has Microsoft
as one of its "platinum partners," still propagates the myth that Linux
is not for some people. It is in fact for everyone, and the learning
curve has decreased significantly even in the past few years. In fact,
the king of the enforced learning curve, Microsoft, has ensured that
Linux is easier to learn than ever, since their own OS has gotten
needlessly more and more complicated over the past 20 years or so. It's
to the point now where I don't feel I have the patience to learn their
new way of doing things even if a job was to say so. Thankfully for me,
this is not the case at all, and I have the ability to stick to the
lakes and the rivers that I'm used to, right here on the only truly
operating system on the planet. My computer works for me, I don't have
to work for it, unlike these new phones these days that make me work for
them more and more as time goes on, tell me to move one finger while
expecting me to stand on my head, etc.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

