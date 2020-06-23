Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7212052F3
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jun 2020 15:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592917276;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cw/9f2RHOrKjOkYoIhMQMk1Vqj+lkPo3gJ3IfTB2sR8=;
	b=UxBPFW4bjHGyXH0pyjFoIYdTmQQTdtVkIX1R39WVyPzYRDdGzVKhKzjS8t3uiSS+ainRar
	CYmN/rHQ6XUaIj6PkY5ZbXOqxxo/pU7feej1kiYXog4L718X0XwfCiCUzuLIZ6JIFDAnIN
	BkwlL5KY8xxJWvXZwnWIePpdpQTZV8M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-227-pNsoRduQPR6r9pdhn4cWVw-1; Tue, 23 Jun 2020 09:01:11 -0400
X-MC-Unique: pNsoRduQPR6r9pdhn4cWVw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8EAD5100A68D;
	Tue, 23 Jun 2020 13:00:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47DE210013D2;
	Tue, 23 Jun 2020 13:00:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F34A91809547;
	Tue, 23 Jun 2020 13:00:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05ND0kZB000874 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 09:00:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0270A217B438; Tue, 23 Jun 2020 13:00:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1DA92156720
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 13:00:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2FB08007AC
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 13:00:41 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-141-EzRat0NLPV2zjvESutINjw-1; Tue, 23 Jun 2020 09:00:39 -0400
X-MC-Unique: EzRat0NLPV2zjvESutINjw-1
Received: by mail-oi1-f180.google.com with SMTP id i74so18746845oib.0
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 06:00:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=q7lOo0cHTOVibebPD8razNpP8x1ciXE9xOXHqz3ZleE=;
	b=OgQHNIk5xuTfyrVYSuIw8Akpg9w8fp5p+T0+omNQ1x+J0Wp34c49lCKJkStooGdQyN
	Vgq9pgbSxJoOiYM416qc3ZMnyzlV2Lm8woaLikRrSmh8qfq2KrG6UX23h90O687Hg0dE
	Cur4qHPQJXr9S29t83U5za+4w+3GoG/36RsUoHI/eBSEZjqYKvkcMvX+wQjQludEzIwi
	o9WfmY1CDNLJH+QSZlmeYkLfag8Zf6SqUqoECtqvSyqA9dt3TYXYctu8+yQzkQkQhv7w
	izjdXHEZjAyKK8HzWz9vsdKqOhHR2QcbSd7OfxB9AXMR502nzRZiRfOT3SjxN1zgtwmq
	QftA==
X-Gm-Message-State: AOAM530yEWKGO2QSgEnXYG9liTkittfbqjGCfaKJS6w/1Bl816bNvh8t
	TWR+NB9NuFVz/+aoG3NS/mTGgtZmPwI=
X-Google-Smtp-Source: ABdhPJz6c0aNXQ6tYJGWfQu4QsByDwJ9ODyOsCSg2sIOhuSXqXlAB6BDMhbtu66mNdH5lqpmLWYM2g==
X-Received: by 2002:a05:6808:a86:: with SMTP id
	q6mr15573214oij.171.1592917237562; 
	Tue, 23 Jun 2020 06:00:37 -0700 (PDT)
Received: from ?IPv6:2601:3c2:8200:9360:5c29:297:62a2:3c?
	([2601:3c2:8200:9360:5c29:297:62a2:3c])
	by smtp.gmail.com with ESMTPSA id i2sm4018984ota.66.2020.06.23.06.00.36
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Jun 2020 06:00:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.5\))
Subject: off list questions
Date: Tue, 23 Jun 2020 08:00:35 -0500
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
Message-Id: <C89E4DED-1132-45C0-BE16-E42E2E9B6ACD@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05ND0kZB000874
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Al and everyone else.
How may I write to someone, if I want to explore a linux topic with someone off list?

> On Jun 22, 2020, at 8:03 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> My objection to using "literally" figuratively is that we then have to find a new word for literally.  In the example here, "exploded" is enough and is figurative anyway.
> 
> 
> I'll skip the other stuff, and take a second of amusement that this became a topic on a Linux list.  (Then again, computers are quite literal--in their numeric fashion.
> 
> 
> Best!
> 
> Al
> 
> 
> On 6/22/20 6:47 PM, Linux for blind general discussion wrote:
>> Yeah, I don't really get the objection to the word "share" in the
>> context of telling someone about an experience, and while saying
>> someone has issues is vaguer than saying someone's nuts, I don't
>> really see such as euphemistic... granted, someone having issues could
>> just as easily refer to everyday stress and/or bad luck.
>> 
>> I'm also okay with the word "literally" being used figuratively(e.g.
>> saying someone literally exploded as metaphor/hyperbole for a fit of
>> anger).
>> 
>> Then again, perhaps my inner linguist is just more of a descriptivist
>> than a prescriptivist.
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

