Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id CE22C1F8B26
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 00:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592174138;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=riM1SbvOWXNzwijvorIxgpmVN/j9gLuzYWyPlaFACto=;
	b=i+u4deDmbG5KPRXsHMycVIB1kW8jba1wgaI5TlcX3oH/ZFiL2w7LUsh679KQI7S/QJ/YXq
	VOQWfA+DbRC1aw4uoVgzqOuzPpKU6KvtuTGqZqcatPYrOqWHNAVAIjIyoLl7UZjkYJEXIu
	/obHFCIQ/3/GhaC6dj8egPZ5/03KPUk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-N_bckHFaNoqD0ta-E5nelA-1; Sun, 14 Jun 2020 18:35:35 -0400
X-MC-Unique: N_bckHFaNoqD0ta-E5nelA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1174418B6424;
	Sun, 14 Jun 2020 22:35:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF44979598;
	Sun, 14 Jun 2020 22:35:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 78824833BF;
	Sun, 14 Jun 2020 22:35:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EMZTLp010362 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 18:35:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 546F21000DB5; Sun, 14 Jun 2020 22:35:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F7C7110F39E
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:35:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6536685A5B1
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 22:35:26 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-403-f0WH_H-CO26x_YIqOpA9Hw-1; Sun, 14 Jun 2020 18:35:23 -0400
X-MC-Unique: f0WH_H-CO26x_YIqOpA9Hw-1
Received: by mail-qk1-f174.google.com with SMTP id 205so14078072qkg.3
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 15:35:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=3HWu2m9G7JSQ9zmU4KJqoTWF43lHMgPCEkZhokDigY4=;
	b=HZZVPLl5LomGvHd361jvGBnH0/21K42Uq8G/qhjfv8/EapUijJNZqGHURoeXzkLT9m
	FpRJyhwE6IqAziZ76eolYXV5yKvGTrM7wD+wVY+9t2g+xQBS0Z2o6Ssk830Na2JSMYvV
	RUl26ad5MtpyUWib8g/JHA82AMdnJap3KqFraq6ToTV/1Ovu8To/Xk4yqih05RXKc3B2
	Vp9vB/HLlTwutD9gG+z8+sUAtXR65W9uS53xAjnmotgcm0zE8GpiJL5BPOU9G23ykoOR
	MMe9kg0XVZwaoCUYI/bMjYIRf+MznQn5A8IZDpDc/dQ92mjKMxMlzqrQL1NdTeu0cn0a
	LeHQ==
X-Gm-Message-State: AOAM532S0Rc0P1dtJxhxLUHs8YHDJnzhUArkLw5QmZbhxy/mFJXkbCUP
	PIOOJ2PcJpETsA7wDXJUro2RcE/lpdE=
X-Google-Smtp-Source: ABdhPJz3w6EYBmfCYDjWtvk6EquCHbMlfldVCK0gXYkitQnJKKVGAvkyb4+FLCJWPwkf5ENEpX2OYw==
X-Received: by 2002:a37:4f52:: with SMTP id d79mr12824083qkb.330.1592174123056;
	Sun, 14 Jun 2020 15:35:23 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::241?
	(2606-a000-111a-8d0a-0000-0000-0000-0241.inf6.spectrum.com.
	[2606:a000:111a:8d0a::241]) by smtp.gmail.com with ESMTPSA id
	a81sm10155785qkb.24.2020.06.14.15.35.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Jun 2020 15:35:22 -0700 (PDT)
Subject: Re: Prospects for an accessible and open version of Android?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<EB4A95DF-4EF4-44B3-BD31-140DA0E08FFA@cfcl.com>
Message-ID: <bed258f6-4123-8c00-a9a5-8605cf68a05f@gmail.com>
Date: Sun, 14 Jun 2020 18:35:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <EB4A95DF-4EF4-44B3-BD31-140DA0E08FFA@cfcl.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

My apologies for posting with such an obscure identification; I'm used to
> having the senders' identity retained in mailing lists.


This was changed on this list several years ago because a spammer came 
onboard and started harassing members of the list every time they posted 
to it. It got really bad, worst I've ever seen. The list owner just kept 
it that way after the incident, and I don't blame them really. I mean it 
really was that bad.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

