Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 4307A235762
	for <lists+blinux-list@lfdr.de>; Sun,  2 Aug 2020 16:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1596377807;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i1zHc9uioCD6TNOcWsigJzramO5OsDS5K/dnLJm7ES4=;
	b=RCH68BTZYb3/I+l6MHihhnjBpsL+RluuJyc7QmNnOyE+gGKkQUSPg5pX/QcJPOr4YiHqra
	ldfHHa3b9T6fji61cPkqClg3Wrw/bP7pPCd9lVGK5ZusvwImr868CcuvRiUJ4mieJxkQhg
	Wlo66FdNyrO0g89VhQqObWsa5Y/ICt0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-275-Rq8NV9NsMt6D64yTJgpoug-1; Sun, 02 Aug 2020 10:16:45 -0400
X-MC-Unique: Rq8NV9NsMt6D64yTJgpoug-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30A978015F3;
	Sun,  2 Aug 2020 14:16:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8658C5D98D;
	Sun,  2 Aug 2020 14:16:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BB2B695A7E;
	Sun,  2 Aug 2020 14:16:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 072EGWCI010011 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Aug 2020 10:16:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C17102166BA3; Sun,  2 Aug 2020 14:16:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD45E2166BA2
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 14:16:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A07448007D3
	for <blinux-list@redhat.com>; Sun,  2 Aug 2020 14:16:29 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-63-K3qWtxFaO8mZmhDhUUlgGg-1; Sun, 02 Aug 2020 10:16:27 -0400
X-MC-Unique: K3qWtxFaO8mZmhDhUUlgGg-1
Received: by mail-qk1-f171.google.com with SMTP id b14so31351822qkn.4
	for <blinux-list@redhat.com>; Sun, 02 Aug 2020 07:16:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=OU70SSEUQktuMCxIStUSS78dfTML2E2yyHjEp/llX4c=;
	b=R4Cgl+ZQHf3ehPlLnd/60I7B9HkAAii/MzjOgqn1DD7vjGEGe8h3DbpAp5enChcrU/
	iwzg8h1MJy8/xu5EdZP4b/K+Py0Yr9VP810Gu0kekGVPpI1F1a2msyOtG35Y7yL3UtFR
	m/JU4xFvyfKrAVGAvI6vp+7dP3i3R8Ybc1Cfz7Tll49yUV6pJPvSlZ5RAAlvVoJjG98K
	+TQbukVJj4JH8ddXTwuYi3uLoNRH0jbW+JMqwPLWar8ZuKXOw4pldm7ipTgwybjV5F9D
	z5HWrP2X9HZXKYiEe0ora4rfKh+endj6NVza/WA/RM1W8dDgW5NO2q6XLUklnZW2XyeE
	YjsA==
X-Gm-Message-State: AOAM5333dpkycwU7i627N/dB/3vD+X9puJeQ9+WpLX2DxNUodg08K/cn
	Ice8uxH27rRFhUcJIuGVdB0oTN7Pz2U=
X-Google-Smtp-Source: ABdhPJx81x5NdjbtvRGK9swUv9kyz4L1fF+9/zczB8vPeMef/+84HeNsmTP0UReSPy1DQjUSkLhQiA==
X-Received: by 2002:a37:a1d3:: with SMTP id
	k202mr12432206qke.143.1596377786459; 
	Sun, 02 Aug 2020 07:16:26 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	d57sm18443063qte.91.2020.08.02.07.16.25 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 02 Aug 2020 07:16:25 -0700 (PDT)
Subject: Re: tips for using gnucash
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CADj8Jxeftx5wEP7BBgW5rgr2=vhn2R==8EyBd+QZWN4-1G8Stg@mail.gmail.com>
Message-ID: <b23cc713-7308-d323-14d1-594b83c4f781@gmail.com>
Date: Sun, 2 Aug 2020 10:16:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CADj8Jxeftx5wEP7BBgW5rgr2=vhn2R==8EyBd+QZWN4-1G8Stg@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

It's possible that you can download your transactions directly from your 
bank. Most banks allow you to download csv files that you should be able 
to import into gnucash. Of course this won't work for everything, and it 
certainly won't work for cash transactions. I haven't needed to use it 
because my bank has a web-based unified system that imports from various 
types of accounts automatically, and I rarely use cash, so I just keep 
up with that based on what's in my wallet. But let me play with Gnucash 
a bit here and see what I can figure out. Perhaps it will work better 
than my bank's unified system.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

