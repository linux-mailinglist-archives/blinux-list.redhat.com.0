Return-Path: <blinux-list+bncBCV3N6GOXMCRB2FWQDFQMGQEHGI6UHY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-dl1-x1246.google.com (mail-dl1-x1246.google.com [IPv6:2607:f8b0:4864:20::1246])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC31D0630E
	for <lists+blinux-list@lfdr.de>; Thu, 08 Jan 2026 22:02:35 +0100 (CET)
Received: by mail-dl1-x1246.google.com with SMTP id a92af1059eb24-11f4617e256sf16236603c88.0
        for <lists+blinux-list@lfdr.de>; Thu, 08 Jan 2026 13:02:35 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1767906154; cv=pass;
        d=google.com; s=arc-20240605;
        b=gZ6LKFPZDOLyII+4DdiYEZFwpgdTfQkYlSTq2UOKD0rbttYoN8amYaSNWMmYqGDpiB
         Psuxocwvu0PtV2jjyPQVeDwV9cURv99Gjbecm7gLYJi49adtSR+/tJUXMeS45/TKtG0s
         IUElHF001wZPVOG/GNlR2kEXUBq2QPajFi26nytPQ3zyjfe1DHuLXUmltHMhP3khVT8X
         MJ3bPl8pTc2/TWQ6lHUnQk3u/jzb+P7Xwzd8YhIS2wSNb2Wp6KWrdf5A4Z//y5YBjDsH
         Q0BI4CZq6d/JbyCZgs1uWXIJnJbVdDLg/f2pU11pY/s1UPTk0CMQEqzgwY2ckpnWwJ8C
         kZfA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:dkim-signature;
        bh=jgerm0d4XW/LgOaym1pwWh4gWZ8ZCDjxB6Yurkhv+jg=;
        fh=Lbh9UTUXwyXOpgMI13vE3LoqJyWkhnWXyqN/3izBKug=;
        b=fo/DGtA/UhCRKVa+iTY6l8K3/Smc6qL1THqIjJvqDk57VYqwHe2lV0xnwH3uLHGk3L
         8TyRodrr5yUvtz6UL8iryCX9lgC4IxodnEkjwbp9t714iwiHBl3WbVUcp28a58/Tuh8s
         m0mVfXzgEAGt8ylurJyFOf15s45FumUbDDp5CnVY02FheHmtCV+GdIGO6w3bFKpz/KwG
         dRHyegXv7uBBxwjOKf95AZ0N6wJ9CLHInK7892kQPM0wwIjfyxPltKCKuvNYAKJ+awq5
         SJmHI1VaSII3uA+lai3733Nx0hBgnqKd9spLnlQPz4YlKcDXmjsIaIUGwuDC0bbYDuDw
         CjsA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=NLylxmq4;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1767906153; x=1768510953; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-language:ui-outboundreport:in-reply-to
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:from:to:cc:subject:date:message-id:reply-to;
        bh=jgerm0d4XW/LgOaym1pwWh4gWZ8ZCDjxB6Yurkhv+jg=;
        b=h/F0nEYR7aqb0Vu2Ag0OZdL2e//E9VcChtw/alNC2SAeUwfAKL0q7CUPNjS0dZfXjN
         i6t3Bw6zWtlyqEnpNd26oYwiTohHKocbRf7RyOwzKVyaAt6gVu0JKy/HrcR3oLEx8wyj
         gA30WZyZtUJFIhnFpOrJI9+y4M8VHVr8IXrKYFlmZw2RJwGiwgCQq/2Nj0Y8GX4PuKu9
         fHRgtG/j0646Cj61Sb0iZbhnc0srzw9o+Kf5TA0It4W5mF8BwHc+bUwaufMHcwxiQwSX
         q8CepcqLkkxtrC47T/y2YIbwbPA16DeaEIJd1p+0lShPaBQ+Ppz05+EhiaG+VL2KHLd4
         p/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767906154; x=1768510954;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jgerm0d4XW/LgOaym1pwWh4gWZ8ZCDjxB6Yurkhv+jg=;
        b=ZMvZOQhfoqqRhOvLK0OSWwGjD0niWAaAgw1atlkHmwkQg5NECXZpyIyFO8vSJN3OYY
         aKBnsU+FEXaQZwmgvZ6d7l5bpWpH/Ni8RVKE9c+tdEr3+rPAWcVNDKuLrQKeFD8+Kqc3
         maH0xenU+bzJ9JbaILE/PrXORDrBxGVamGG7xKxaX6CuvL3Qyx63L1nFjQ9T7pvmEBC7
         lOoT/4WI80d0LiIeUuAE8LCr4PViMjteDo6G5A4/ehVn1erdvM4fL0icJy7ViJ/3tvKc
         nrJoca37jDcZIq7wPnr77cE9XXcXkJa3xp6nU5OQZ6NQDsE1Sl8rmZLvzrzdLoZhowSS
         OA+g==
X-Forwarded-Encrypted: i=3; AJvYcCUp8mkykEw1HJWghUOdChK4O48dJxNz0NDlger3PpcgtawKC7fMwv9pjTuEpxQqVUmHK49Z1Q==@lfdr.de
X-Gm-Message-State: AOJu0YyK1uLb85ZOXghUjL2HfqcKHquEvdrt3oQe6H4L527qNmWu8KiG
	UD7BEd9c1PqqLi3L1A5f7FN8mrOrjJIsqUR9M3p1MG301CrT/qBedLKDqqhhw8g98jA=
X-Google-Smtp-Source: AGHT+IF2aF8Fskd0g2z9NwEC1AVfAOyvf0lDh0xNE98P7o/CAIsnb6kUb+Mlt3go+vq7oJZf580QDg==
X-Received: by 2002:a05:7022:7a4:b0:11b:9386:a3be with SMTP id a92af1059eb24-121f8b60a29mr7432600c88.41.1767906153139;
        Thu, 08 Jan 2026 13:02:33 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h="AWVwgWbm6JZFgs8F4QPmo8sye1sAqqJOX9ew1HoM9v+Bp9+wOw=="
Received: by 2002:a05:7022:518:b0:120:568e:34aa with SMTP id
 a92af1059eb24-121f139968bls2449837c88.3.-pod-prod-05-us; Thu, 08 Jan 2026
 13:02:31 -0800 (PST)
X-Forwarded-Encrypted: i=3; AJvYcCV7U8V2BntIQtrerz60IXpzRcITDwmGkLLWAUrNE3QmpZ13eCcjb/u80BRa21PgAdcfK9e5q+SErw2JFw==@gapps.redhat.com
X-Received: by 2002:a05:7022:38e:b0:11a:4016:44a5 with SMTP id a92af1059eb24-121f8b460damr7373360c88.24.1767906151084;
        Thu, 08 Jan 2026 13:02:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1767906151; cv=pass;
        d=google.com; s=arc-20240605;
        b=P9Kejd8qhbfAVr/l/xMafJ4gqcYdKVqVEvlyYwpO+0WsRT0yanW3zHj/1mRcWVEQot
         Ijj7H+9Ha/uXWJ49fOh9TWJEUYkvhgHkS82xnb21hwggGqRFwsVcXUipYhC2dNfCrgMr
         xoECjOMLQZX0c785cxc8eHHAPbDFxITv9et8yZEn+ZJj/z8fts2n9qvHJGq3ky1N9a7a
         BlhStfVKttMxfB0o1mpUCIhSrBxR+Y/6XeHx/5rLnarcAjBR3DTBQSmgD2YrTWy5lHaL
         Q3St4Wde0QSeB9wqyu1nCnPzQziBkRluWow7XDRGDx+ttRd2yqxGTQgCn1zijYhQz52c
         KAJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=jeuSLkq0zrdfyC/ylZGrttb8CYf2ut+/Bc6z4233NgA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=QuN5fZKLHMZ3CSnFRvLlivKM78QHcgU/nAkvLsnrbheZhpSOG2ejqx2bDEn+XZYsLi
         nf4CHlHHKDCgBuWDU0ytg1hEZp+5HhnOJVroCjjvgyfAHGahkCkhsQRW6peJqCsZjuyv
         zd0OBFZfNu+9T93M4aH3+xtays5wDK023CZAcM+s/d1eWpV2erZc30rT1NnGE/BpAmA1
         uQH+gegn8NW6kx5hOiAL4xdVZPyj2BMvxOLazTcMNqNIzXOCU4AMqLSX1McFoOwwif35
         3ZqGGlw9eVQgwaRDf5RloEz2lKWnIAXnX175q5+VM9ejUdng2TWn64m4q92zxiVIk5mP
         7E+g==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=NLylxmq4;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id a92af1059eb24-121f249db3fsi30437926c88.51.2026.01.08.13.02.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 13:02:30 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-496-MRkojFQ3MxydK6jD9npBWQ-1; Thu,
 08 Jan 2026 16:02:28 -0500
X-MC-Unique: MRkojFQ3MxydK6jD9npBWQ-1
X-Mimecast-MFC-AGG-ID: MRkojFQ3MxydK6jD9npBWQ_1767906147
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ABA2C1956089
	for <blinux-list@gapps.redhat.com>; Thu,  8 Jan 2026 21:02:27 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A5C3130002D5; Thu,  8 Jan 2026 21:02:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A2D5730002D2
	for <blinux-list@redhat.com>; Thu,  8 Jan 2026 21:02:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1926A195608A
	for <blinux-list@redhat.com>; Thu,  8 Jan 2026 21:02:27 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1767906146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=jeuSLkq0zrdfyC/ylZGrttb8CYf2ut+/Bc6z4233NgA=;
	b=YSN4LiiGqkeuSPhehnRmmyUgZTRvXMbUg7qaHfei32o0Zh4ZUqHXk1LjiOjUMVJjy+a/mw
	xvB9SQ9hePmyFcjoCRq4pKS4HHCvdC1WCGruDmyMM7XMj43kcZPnXsZrYzrYavih9wAwGR
	JquhLKU7Oi+idQDEgtxM54/6y3iv46LTi1dezPhwd4+CyD+5jBChUjJ8W7fw8y+iPyBoSk
	JUVOo5crupwvkEjqjfT3ItpAMV3g1zvaNKI2n8DNOMDo3/wBkNLljDzWDRT6h5zIHTxoE8
	lo30BZJHM76L+rKwkIGEYq147kfyy/luxyLOCkapIrfp8l89NmYTqILhyRCAOw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1767906146; a=rsa-sha256;
	cv=none;
	b=eynDF7a9YQum56Z7TdyHKsYfAS7hKxzfqs+I51zBN/nxh/bPV7B9/aKNbYT7bK9NDnP8oG
	2OnVlly0kNQVRx7k5XFs68QmfwFtCqxlJ8JFV7u0DqeGC/ohFkRV2SOP+OExKaMyBXJJqo
	rpFEq/BsHHmjUTfC8ZytDzC6SqhK0yaAfPY7yQZgo0iUaW1qA1vCLieDbRnfrSKGTnjWwb
	Nba9tj0/QCuQ6kt2WAr2iH85hZLBnB+Q3ZwODEK2h2NNU/UDSKQgqTiUqlZ9p4iRB1faIE
	I2Nc6lr1NuS7LuTTrOzBSOLrJu7Wx3kkOEFCSmqXNVXEUKA3ak+KKf9tvpboaQ==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.it header.s=s31663417 header.b=NLylxmq4;
	dmarc=pass (policy=quarantine) header.from=gmx.it;
	spf=pass (relay.mimecast.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-544-MU_2y2R8PBukvhY1e2hHZQ-1; Thu,
 08 Jan 2026 16:02:24 -0500
X-MC-Unique: MU_2y2R8PBukvhY1e2hHZQ-1
X-Mimecast-MFC-AGG-ID: MU_2y2R8PBukvhY1e2hHZQ_1767906142
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.40] ([136.47.142.229]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MzQkE-1w08nG1NlQ-00tK9n for
 <blinux-list@redhat.com>; Thu, 08 Jan 2026 22:02:22 +0100
Message-ID: <2679cc7a-4e36-4018-864d-26a1a87a2fda@gmx.it>
Date: Thu, 8 Jan 2026 16:02:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: jenux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <ec97e372-1d5d-4e1b-a581-d62b4ddebabe@gmail.com>
 <80157d3e-02aa-405f-91db-4227370b368f@gmx.it>
 <e3996fda-7734-4868-b4c7-742c4df6ef5a@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <e3996fda-7734-4868-b4c7-742c4df6ef5a@gmail.com>
X-Provags-ID: V03:K1:urchq/DyKOpn/3IYZuLNvB2PFJcuUoHElemAQ3+AQZaJSjnRsVr
 wdz0Sr8uR3T+TjriJuqz2t+sgjUPEA4YmI5pEzVayT9rtpQfTyBpBbkI58ITlfESRk5W/d+
 XimBeHD2owYjNdD6RQK0y73Hus3zuQo2JGnMMnKvqjqQiqKLevP8ahcQUQR9Q8zQ1sJe043
 DaAmocIl7+NYpg7quvkng==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:0MZjhWfdGnA=;clTZccKqXZmH2EuBeF7lP8cv+uq
 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
 Mpvky2nYlnFnuzAFVQT5sx0HHnd/oh4nlnM=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IoR1j2zumN1KKFFfFEscdCW-3IpojdlEweAXYChR2dU_1767906142
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmx.it header.s=s31663417 header.b=NLylxmq4;
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it
 dmarc=pass fromdomain=gmx.it);       spf=pass (google.com: domain of
 kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

I have deleted and forgotten your original post. Are you trying to 
install on a Raspberry Pi? If so, then you have the right iso. If not, 
i.e. if you want to install to an AMD or Intel PC, you need 
Jenux-2025.12.18-x86_64.iso. I'm not fully sure how or if it works 
correctly, but Jenux-2025.12.18-tripple.iso is as far as I know supposed 
to work on everything, even very old 32-bit AMD and Intel PC's. I need 
to try that myself, as I still have a couple of laptops that are old 
enough to need either this triple version or the i686 iso. I do hope 
this version is still maintained, as most other distros have stopped 
supporting the 32-bit x86 architecture.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

