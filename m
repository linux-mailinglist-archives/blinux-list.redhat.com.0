Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9D0873D1700
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 21:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626895296;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Xf/ZIM2RPwfg5sejVvdQWLA115UOrLWo+xVgtvhMUDE=;
	b=gfDibrfqFrvR1xyQBxtaPhEcEyUHsYmEY5YTtKb7KZ9lVKIbWXJv6sEIQr+iSzmAHTZTK3
	5VTuQ9nfFSWkR70yJhNAV4EGRpW4zEDxURXpvVt6xcV6VzeKPB6QcVFhC/8RdIkoWR/olN
	0IoxAvjSJT2VeWLKw4IlmsxKp4/zNfc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-334-g5vrdaSGMR6cdVwpjbmCcw-1; Wed, 21 Jul 2021 15:21:34 -0400
X-MC-Unique: g5vrdaSGMR6cdVwpjbmCcw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CD06107B7CC;
	Wed, 21 Jul 2021 19:21:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 420F610013D7;
	Wed, 21 Jul 2021 19:21:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B36611801028;
	Wed, 21 Jul 2021 19:21:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LJLM6h012799 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 15:21:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E5BD9FDCD4; Wed, 21 Jul 2021 19:21:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0D6DFDCDC
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:21:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E165801E80
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 19:21:19 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-514-8tP19USKO5O6ZRdzTtZ1EQ-1; Wed, 21 Jul 2021 15:21:17 -0400
X-MC-Unique: 8tP19USKO5O6ZRdzTtZ1EQ-1
Received: by mail-wm1-f54.google.com with SMTP id
	r16-20020a05600c2c50b029014c1adff1edso142093wmg.4
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 12:21:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=UlJ6eL4u+K5FuOL2toN1NRc9o2pXGFdk10R1ELFE9yA=;
	b=YwYUIZ7cr27LeNC4eHyCZT/gXkkDWwvODTRiaGCvbHeDT36l/iwPEgzvu/3e+P5AlD
	sYrhSpw8jtwH9O4q+SIwu+tEOYC40LjYAoFjOk6zyAGyniSl7bV26oOHVmuhbsiDYTmO
	qQnU4yRr5QGhYSFRqOIBYeVCsm2mT2G+3zSrUNe8wnd8t0E2gEvPGLa4o/vRpIehyVm6
	yfECwOauV0JR101fOH3vLMpsaWggCc+xc0BUN33LYo4ZkQn9edBGJqETDUr5OYJ5H+tf
	nwP1ALHO/45fygVstKBqsm+AbhYwVPbhpurW+0sca+Lno1P5VxhO8iowzqVel9YKZ7an
	SY9g==
X-Gm-Message-State: AOAM5306qx/tdZspVx0FOZ6g19EgZHK/yicXXBIBcgUyrfhqSxa7hiOt
	g8foQqIuZBCqVx8aYNgE83DL3cLKf43+3g==
X-Google-Smtp-Source: ABdhPJyf4W2Bc4hHzTQhF7M8WobRqKxm+xcTpSA/KlAr8sdA1Df31slUXg94rYjmzrNCGxZUT+6Crg==
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr5424768wmk.108.1626895275574; 
	Wed, 21 Jul 2021 12:21:15 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id y19sm696686wma.21.2021.07.21.12.21.14
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 21 Jul 2021 12:21:15 -0700 (PDT)
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
	<CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
Message-ID: <e5e37ddb-a8d3-169a-b44b-904fbe9e7b8a@gmail.com>
Date: Wed, 21 Jul 2021 20:21:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm not sure if Insert+H and F2 will work though with Chromium or 
Electron based stuff just being blank to Orca? I mean I can test it on 
my end and see if it works. Solus is reporting Orca 40.0 with the 
installed version so not sure what if anything I can change to make 
Chromium work with Solus and their DE. I thought I had to put stuff in a 
config file? I'm coming over from Ubuntu where it all worked flawlessly 
so....trying to remember how to set stuff upin


On 7/21/21 7:49 PM, Linux for blind general discussion wrote:
> When Chromium stuff breaks like that, hit Insert + H, then F2 to bring up a
> GTK dialog. Doesn't matter, just close it. Something breaks with focus when
> stuff like that happens.
> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/
>
>
>
> On Wed, Jul 21, 2021 at 12:03 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
>> So, grabbed Solus 4.3 and ran into a few weird oddities with Mate.
>> Nothing insanely deal breaking, bar one or two things...
>>
>>
>> 1. For some reaso, the Mate DE doesn't have the orca shortcut set. This
>> isn't really an issue since alt+f2 and Orca takes care of it.
>>
>>
>> However...
>>
>>
>> 2. Chromium doesn't seem to respect flags set. And it breaks the
>> installed system to the point where it's locked up when quitting a
>> Chromium app
>>
>>
>>
>> 3. After upgrading, Firefox lost the browse/focus mde messages
>>
>>
>> So is it just me using Solus 4.3 here and anyone got any ideas, and no
>> 'use another distro' is not a valid answer. I've already suffered one
>> borked system due to Ubuntu being inane today and the terminal suddenly
>> not being a thing mid version upgrade, so...
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

