Return-Path: <blinux-list+bncBCMKFVG4RQEBB27SZW5AMGQE7QDY3QI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 5873B9E7BA3
	for <lists+blinux-list@lfdr.de>; Fri,  6 Dec 2024 23:23:41 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8f4a0df93sf15238356d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 06 Dec 2024 14:23:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733523820; cv=pass;
        d=google.com; s=arc-20240605;
        b=BNm/f9LmuG0eMqWPmI1EiUHzWlNRKPVYw8GuGqXBU3bkZ5hhdlyWhW+vnLEhU6TEst
         UkWXeU5tunqnVf1AeAZfPPwnuQX7cNzoDJgIaQoOGEaaxWR01iGAWIK+VS09E2IHdqgw
         7TYDIzzP9XXpjokkoMf287nimF2PBOgWC4F2x0x9L1lpcvTSAm8CwjeOnrXWyWEpDMON
         XLM/sQYMW+TkMgo2L9+3OxKogqxCX7TdluqlRs4Ap+pEqNmi3g+WanXOb9QMlq+JHfOg
         i8uGKo8fWhJ+Q8jR5l8QTPjGaTDR75fKAeRTMPQ2sQKFIQ+OkVzOCQ3XWGc/ssEal6OS
         o1YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=F5pGNsQDaxPFZSLOVyuvgLWlQBNxByHy4S65OQyA3P0=;
        fh=bynn9m+0ae1RYvpaZ84aFg115nOJLPvHNCgq1TtrB/A=;
        b=OxZePuDca0yDlaPzrO9puvaI/V5reQF1Rj47yxgYEXCcMm3WT3n7RvfAOhD4/jG1Vk
         1Bbcoto+umfk9L9KjGKzU8NLkOSvSH1yMBUaPqE7utJz2vntrtX7E/TyFvM8Bs3Z41Zw
         eD9CNGpIbzy4auNOGOXtandiN1g6JSYslKeQrVWGZtkc2AKpFGKdbNwLtGJs3FoOitEa
         hCw7ehQOoKzoZpEF3DRMpkNNJa5muOO7AKSSOWiA/6goqzHc5Xd4yFmhEHfTcGPT41YW
         u3+eKDqQ8MnsSHxXpIy8Q9MJ6mvvndI9j6iVA97tUVB5jHwCLt+XdaOzbOgPa3EjVrfP
         LP+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733523820; x=1734128620;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F5pGNsQDaxPFZSLOVyuvgLWlQBNxByHy4S65OQyA3P0=;
        b=cHJhujbW1Hp5twnwtK15SdhS4bcDaHaQnSeyo7SUkYitkblDFzolir8usYv4e8hsBk
         o7eqBaRBdKa9nOo4ZXPZK3E7l8Ivq+pHMUNdmrKFJPKX4ZjVSHvVu8L+wpNeQ+WKt4sW
         pP7J1e4Um/ia2aveV3SVr3m7ZcOVhlrIl4Gn0A22PVPulanocZbtn3Wzba5t6/M7HF3m
         T9lYNy/1qDyqAmBjF3E8c5WZEwSYHFKoL4zI/Cv26r1dDGQI67HMaV0foqm73alZPnRe
         cFO7U9E9P/NZzmTsDFMBv+/zllqgcxoYJ+k0kmdTwBpq9VKETqMTFOKvvO/RWnNevQXm
         RW3Q==
X-Forwarded-Encrypted: i=2; AJvYcCVnA/RqiybXgsOGjH32fIP4uj7//AHSM0AtXp19AvleWLwLKIk+FE6iRdDs4ylV3V1QIMACLg==@lfdr.de
X-Gm-Message-State: AOJu0YyACk8K/6+jLhgiSCah8cZLYMZL79p6zvQ43XIPB9Qx9VVZd3/A
	QPBouwkqJBbcVQt0mqXnF41sYagHAIQI2Z9L0EeQUDnUQ1pqyj1+d31x1WF9nRA=
X-Google-Smtp-Source: AGHT+IFyXz0mdLUOY/xEjVqcNdFS9TbAQVzlUrykvb5H2gdl44fQqUZexjv6nntX1C+mXTLZNiQQfA==
X-Received: by 2002:a05:6214:1d0d:b0:6d8:8d16:7cf3 with SMTP id 6a1803df08f44-6d8e71b982emr68209826d6.40.1733523820120;
        Fri, 06 Dec 2024 14:23:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:d4a:b0:6d8:86fa:7a63 with SMTP id
 6a1803df08f44-6d8d6b265e7ls43018506d6.0.-pod-prod-04-us; Fri, 06 Dec 2024
 14:23:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUnbmiEa7Xxb8owhoYUQ7xfImH91U1B/oTgpw1vdGQxysDc74a88eUIJKQmwXLQbqV7cemcgAMN9OZbsw==@gapps.redhat.com
X-Received: by 2002:a05:6214:19ec:b0:6d4:22d4:f5b0 with SMTP id 6a1803df08f44-6d8e7179735mr80302106d6.33.1733523819206;
        Fri, 06 Dec 2024 14:23:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733523819; cv=none;
        d=google.com; s=arc-20240605;
        b=S+gSeeEBBkDI5ZJ1ySpMHgDu0jU3alfvEN4K/a9L10p+hoUVNKCbaeb48N1MuoPy2w
         EjxsknIhkURYFrnr2nyoNzFTZIYHyR1+nZi9+GnrGgNler6Jfzo/rtZpjLaXEk1rKUvm
         TyoTg4xBA40OnoA7R+SLh6pKgiutqowK+iofP9GUIQT7uUl3GBl4JYheERPI8fMe60+1
         lvWgbpCBCuWA803HDGBnI6VOn5628mJwRsnJDiE4tpKmZw7RkS+e9RHApyY2WoJGscpT
         JFMCk+gl4G9baPKWE54WjJAzLWWD8Acv9QpUZqISrqyPLNZVVtf2JgBcqZAsb7SKo4Uo
         ViAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=tzRAbpnSAq1tQxkqlWld1SLtmUaaDmxE4eib0x1rxQk=;
        fh=NbaJD2uAKV4/FIqTd0wat3NgsLwCgLHQrdb54Oo5y/Q=;
        b=BeYqwTxj1qhapVKGIVkjxuxHXlGX+I6hygQrnveVC/m6n6KqXsDJjBHV0wOXED5l3b
         mP4D051Lg/1HUTwXTzr6mGVvvg7FqRMpkusxB8zRVIqObAbZLRF7Z0Y4vdVoZiWkr39T
         zICqT4zlJCViCpYPcO2whyWAnGq9aEfIAwTqXJYGnDUq7Gxh/YS/+VmbfzUlXrA72Kns
         yZdpR9wzZP1RIzCYy8+nK6P5Ke4A/OBABf7+oe7VgzN70zqMEtXUkOIX8yXOlzy5Hg92
         3HUgn7gtoujIBx6NEiQcNFs6GWMNTs3JHEwNt10VlxgxOeNCPhAx0Gyvm5ZsjHHAa0Ee
         0JRw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8da69f339si50509546d6.132.2024.12.06.14.23.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 14:23:39 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-157-Fj-NljzKOpKEZ5AFFBP2fA-1; Fri,
 06 Dec 2024 17:23:37 -0500
X-MC-Unique: Fj-NljzKOpKEZ5AFFBP2fA-1
X-Mimecast-MFC-AGG-ID: Fj-NljzKOpKEZ5AFFBP2fA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2CCD31956086
	for <blinux-list@gapps.redhat.com>; Fri,  6 Dec 2024 22:23:36 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 264A319560B0; Fri,  6 Dec 2024 22:23:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 23AE819560AF
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 22:23:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8F1B91956086
	for <blinux-list@redhat.com>; Fri,  6 Dec 2024 22:23:35 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-586-mIiLkzNQPquSeKaz4qfjMA-1; Fri,
 06 Dec 2024 17:23:33 -0500
X-MC-Unique: mIiLkzNQPquSeKaz4qfjMA-1
X-Mimecast-MFC-AGG-ID: mIiLkzNQPquSeKaz4qfjMA
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4FADA62B6C;
	Fri,  6 Dec 2024 23:16:19 +0100 (CET)
Message-ID: <2ca413b4-c88e-42f1-8d43-687cd0e0a40f@slint.fr>
Date: Fri, 6 Dec 2024 23:23:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Re: Sorry for offtopic, response to the blinux
 registration list not working
To: blinux-list@redhat.com, orca@freelists.org
References: <876361b2-68e7-44e1-ad8c-d2a3a838f854@harrastenurkka.fi>
 <a4765a7a-e546-088c-7f43-7c2038dbe283@hubert-humphrey.com>
 <039001db481b$0ea43140$2bec93c0$@gmail.com>
 <4c3ac83d-ad20-4413-a57d-a23874518efc@slint.fr>
 <02f144af-7577-e873-34b6-a8bafe5e2915@hubert-humphrey.com>
 <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
 <Pine.LNX.4.64.2412061655390.706110@users.shellworld.net>
From: "'Didier Spaier' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <Pine.LNX.4.64.2412061655390.706110@users.shellworld.net>
X-Mimecast-MFC-PROC-ID: BkPQI8xvPu3Zj4vi5S_IJfPfN5uvNKvK5qmKQzF9wRA_1733523812
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: m9f9dRYHpk0IQGniJZ-wkCcDm6AnJnk9x9QxSCOnvCc_1733523817
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Original-From: Didier Spaier <didier@slint.fr>
Reply-To: Didier Spaier <didier@slint.fr>
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

Hi Karen,

to answer your concerns:

I maintain the Slint mailing list at freelists.org since November 2019 with no
significant issue. We had once a spammer, whom a support person helped to get
rid of.

The website may be not as accessible as one would wish, but fortunately all
actions (join, leave, set and change options) can be done through email.

See instructions below (footer of emails for the Slint list adapted to a
would-be blinux list):

The blinux mailing list.
Archive: https://www.freelists.org/archive/blinux
To subscribe or unsubscribe, email blinux-request@freelists.org with the subject
'subscribe' or 'unsubscribe', then answer the email you will receive.
More: email blinux-request@freelists.org with as subject 'help' or 'commands'

Once registered, you would send emails to blinux@freelists.org

Also, the senders are identified in emails registered users receive from the
list, but the emails are dropped from the archive. This way you who is speaking,
while not facilitating spam.

Cheers,
Didier

On 06/12/2024 22:58, Karen Lewellen wrote:
> Interestingly enough I have heard mixed stories about the host tools at freelist.
> One source claiming there are issues, another using it fine.
> You may wish to first make sure you or whomever will host can do this well.
> and, make sure folks can join via email only, without having to log into
> freelist.org..it uses a captcha now. Or did on last attempt.
> Kare
> 
> 
> 
> On Fri, 6 Dec 2024, 'Didier Spaier' via blinux-list@redhat.com wrote:
> 
>> Thanks Chime,
>>
>> unfortunately this information is rather old, thus many of the links it provides
>> are dead.
>>
>> Unfortunately the blinux list is only partially usable and provides not recent
>> archives. Fortunately the is one here instead:
>> https://www.spinics.net/lists/blinux/
>>
>> I think it's about time to cease to use the blinux list that seem to be
>> under-managed if not no more managed and replace it by one that could be hosted
>> @ freelists.org as is the orca mailing list, which is free with good records.
>>
>> @All, what do you think?
>>
>> Is there a volunteer to register then maintain a list like blinux@freelists.org
>> replacing blinux-list@redhat.com?
>>
>> If no one volunteer to do that within a week or so I could do it, unless someone
>> objects or have another proposal.
>>
>> Cheers,
>> Didier
>>
>>
>> On 06/12/2024 22:09, Chime Hart wrote:
>>> Well, Chris-and-Didier, I am glad I save as much as I did. In my Lynx bookmark
>>> file, I have the following which has several mailing lists-and-an ftp archive,
>>> which I haven't tried lately
>>> http://leb.net/blinux/
>>> Maybe an ftp index will provide dates to imply if any will still work. Best
>>> of luck
>>> Chime
>>
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

