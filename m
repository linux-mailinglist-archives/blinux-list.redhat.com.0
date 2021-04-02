Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 397F0352BA7
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 17:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617376607;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Z37oEX1/j1qI4SlAcwgH8CfwjatV+aXvPXeWzqLsrN0=;
	b=CsVHuv5IDIv5t9baMLu8NYROLeKisjhcZHsDFuqFonJjKuUePFe6N1SS4UrJl73q3cYT6a
	7ClOv0V3tWeqtojdXZQfuzjHzRrUw165h8l9np0xxTu1UqAFcnXoRwF0zZo+Q8VrQ1rm+G
	brNSBxMsHdGl7QVQPMOsA5b7zep7yKg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69-sEA6kfyDO0OhaoFx9itD6w-1; Fri, 02 Apr 2021 11:16:43 -0400
X-MC-Unique: sEA6kfyDO0OhaoFx9itD6w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D8E781744F;
	Fri,  2 Apr 2021 15:16:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 397945C1D5;
	Fri,  2 Apr 2021 15:16:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E99B84BB7C;
	Fri,  2 Apr 2021 15:16:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132FGYXT003277 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 11:16:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8E186105018C; Fri,  2 Apr 2021 15:16:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 899B81000DAE
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:16:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 044E5101A52C
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:16:32 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
	[209.85.222.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-557-_TGvH_e1MROeySB7ferfAA-1; Fri, 02 Apr 2021 11:16:30 -0400
X-MC-Unique: _TGvH_e1MROeySB7ferfAA-1
Received: by mail-qk1-f182.google.com with SMTP id y5so5511256qkl.9
	for <blinux-list@redhat.com>; Fri, 02 Apr 2021 08:16:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=2+cm0QVMqkY1eFsYyWjNojjFqW1YghIjfqoolUT0N/8=;
	b=pItulkukR4obOXbdPKfBHtp4vV6pw72rTkPgyoKtwBIGVQPd/hDOXdDhBh/GijKXU8
	gxHqckylwWFAMJm0YXlk1eNQUvjhEg7AIUERyZTzWYMcUxgQT5hg78XjngS9eFg5Ymbc
	f0h9hxudwchD5tPraEalHp3yF7zvowlaqPgX5Kt+PPHRIiS+9VvbEvX8N8GMtzOjNZwM
	olUtUS3xB+T9WlNFrw8w1G5T1PxolviMcgzn0mpC29NGFP7jRmmcs788vGAIZaGroxTB
	ywfMxq4ageA88sV/5c+D8Bul4d9ycnra0oKam/n6WybrLUzgiujxz6YYSwbvZ0DY0pvs
	+9TQ==
X-Gm-Message-State: AOAM530ESTKVeddvZwjre8L5TSBiPuN+XEYke5sogqnlgoMAQjX2wKkc
	MwW7OJQQ1rkSVyXBJGe4asmQ4T7B1f8ycA==
X-Google-Smtp-Source: ABdhPJwrjfpCFXqacGoM4IhnJVGuJwjGkSxAT1bg85gwv1sOEmtM8ecKe1f05JnBzzAExUtJ3csmSA==
X-Received: by 2002:ae9:df82:: with SMTP id
	t124mr13276097qkf.267.1617376589284; 
	Fri, 02 Apr 2021 08:16:29 -0700 (PDT)
Received: from [192.168.0.34] ([204.29.85.5]) by smtp.gmail.com with ESMTPSA id
	h11sm6876977qtp.24.2021.04.02.08.16.28 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 02 Apr 2021 08:16:28 -0700 (PDT)
Subject: Re: linux and orca
To: blinux-list@redhat.com
References: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
Message-ID: <f2efaf02-e378-eb1b-c341-e077ed69fa20@gmail.com>
Date: Fri, 2 Apr 2021 10:16:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <00ab01d727d1$ce7dd480$6b797d80$@cox.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you haven't already, try holding down the caps lock and pressing
Space. If that doesn't work, try turning the number lock off, then using
the number pad Insert with the Space bar. If that doesn't work, try
pressing Alt + F2, typing


orca -s


and pressing Enter. That should pull up the preferences dialog box.

On 4/2/21 10:06 AM, Linux for blind general discussion wrote:
> Hello, my name is Gery Gaubert.  I live in Louisiana.  I am a retire I.T.
> professional.  I enjoy cooking, ham radio, family and learning nnew things
> to name a few.  I was given a raspberry pi as a retirement gift and I want
> to learn how to use it.  I have Raspbian installed and orca screen reader.
> I want to change some of the orca settings.  I read that you use insert and
> space to do that but that doesn't work.  What am I missing?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

