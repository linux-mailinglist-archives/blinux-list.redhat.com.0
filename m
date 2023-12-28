Return-Path: <blinux-list+bncBCVPTHE7K4IK3XFXVQDBUBFRUVIB6@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1E981FB6A
	for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 22:52:47 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6dc2bf709d5sf99576a34.0
        for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 13:52:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703800366; x=1704405166;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p+ZEEqgHhgstmkkTMO96LzpMaxTIvTNgr2uvV4WBhyA=;
        b=TS9MxD6y/AlFa80s0pbZ9kG5jZK+F18sh5QpxwFzWJBOqVi5BioPSUV8upEfNzIQoy
         FauOsXySy5GVBgsQsFbTA/nBDZoOKJ+egJLeZbW7Z5S6RUJ9nENlYYxpTa7LDn75CkFk
         5uqWU+W5ymrDrH86oOlTJ8qolVA5xHM/PyAxOr7xbtmIWaaWlWLT4M2y2fg7T9Ui0KbN
         7engE+qI3dmplgJq24p6dJny+0zEuHizg9fd/HQiDp4ZcExJhZJfd8yjOia2TsjEniiB
         9p9KONgaRLg00XulLzcFgTT6310iH/l0vUVEF+e3Z9TvRMAIRUA0FzPn+XXovDy2tc2G
         n+Lw==
X-Gm-Message-State: AOJu0YwZw/vvVkTw3qIZY/G0zAMiK3Ow1NtBMZo2ki8DDsAw8JsRl2eR
	GQbwQwLnqD6+c4YdwX7J2Ul1OLXa5SDk9Q==
X-Google-Smtp-Source: AGHT+IGbZKL2K791OXAwAyVz+VEKs5nxeik7hlQVfiKIfdE0dseUPU5OarsoRrrP+kUTsZJpzy3jfQ==
X-Received: by 2002:a9d:65d3:0:b0:6dc:2332:2440 with SMTP id z19-20020a9d65d3000000b006dc23322440mr658581oth.3.1703800365572;
        Thu, 28 Dec 2023 13:52:45 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:e9f8:0:b0:594:ce5f:86fb with SMTP id w24-20020a4ae9f8000000b00594ce5f86fbls1667110ooc.2.-pod-prod-06-us;
 Thu, 28 Dec 2023 13:52:44 -0800 (PST)
X-Received: by 2002:a05:6808:3194:b0:3bb:d06e:5f8 with SMTP id cd20-20020a056808319400b003bbd06e05f8mr1830678oib.48.1703800364727;
        Thu, 28 Dec 2023 13:52:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1703800364; cv=none;
        d=google.com; s=arc-20160816;
        b=Bf4QXExguyu0tvrgEjI75bLRTTuZlrfdWnblo2SFxudlhdB7Ak+GvZUGtX2v3pgYvW
         BFFaHUfGV5m2yFCUUK3XjBImuvQHOG0q+7NXRpnL5PB330/jqT5KFPzTaXznxvW8/4fq
         lRmQFk830ldFC3F84r1qeFsoH51Yf7MfJamMPOUO8FygUlerJbhEATKblXOSLHEG4FrA
         aYlWwYnpLM2ggOrv6ayqh3jBPSd0K3cnNoDGL81Ueyfwq8I+a45D37q1dcWWMr32k9NS
         1VYDQB4GY5O6/N5fo5CmtYyvf2CnIKU/TNSAV7ACoMSaXeL53xCtQcvk80IuDw4soKHD
         t+ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=p+ZEEqgHhgstmkkTMO96LzpMaxTIvTNgr2uvV4WBhyA=;
        fh=a/ESFSq2u0cF4x6pPO13g5BX50Sy6I7y8LZ4Hq+LoZo=;
        b=vdRsDzpVucfBUakR0A32kbf/6zOmzTUF+do3ed2KGJCz2ExmJvWTqVtu00iH7Q3ZWl
         kT8e+9THnt7bNnu027JlEcGkAb+4NA/Br1X+ESqmRJfFQzTPuJHmppcDLiDcI0+3zSkO
         iBf5nE2+TRZ75RBQ31CIJmGSaj1AnnvYIXIPskFwiqSZ/Q/nTwugzvgdc6a3fSCdGIyv
         gDkGaggFsKmCU+ioqI2KYPmT7uAEEeZGlusBXV565vgRG0q73VxtBIYDsM3KwuUsGC6r
         NRR/ZIIQeDC/V/2COKKfV8rZWrS3gGxnmoFey1CqJuSL/x1lMq5j/C8a6bjljfUTwyT9
         UhSA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id jf8-20020a0562142a4800b0068036845503si7247473qvb.580.2023.12.28.13.52.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 13:52:44 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-y29iGL3dNNChTmH6rdNVqw-1; Thu, 28 Dec 2023 16:52:43 -0500
X-MC-Unique: y29iGL3dNNChTmH6rdNVqw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0CAA3185A780
	for <blinux-list@gapps.redhat.com>; Thu, 28 Dec 2023 21:52:43 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 098BE3C27; Thu, 28 Dec 2023 21:52:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01C9C3C25
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 21:52:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D4953185A780
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 21:52:42 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-453-FxvCj3CkNDaLNjMXEt7WFw-1; Thu,
 28 Dec 2023 16:52:40 -0500
X-MC-Unique: FxvCj3CkNDaLNjMXEt7WFw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id E773240508;
	Thu, 28 Dec 2023 16:52:39 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B02731001B6; Thu, 28 Dec 2023 16:52:39 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id AE2F1100080;
	Thu, 28 Dec 2023 16:52:39 -0500 (EST)
Date: Thu, 28 Dec 2023 16:52:39 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: blinux-list@redhat.com
Subject: Re: a question about email clients?
In-Reply-To: <d28137ae-791b-4771-9efb-9c7705383587@jasonjgw.net>
Message-ID: <Pine.LNX.4.64.2312281649520.4153490@users.shellworld.net>
References: <Pine.LNX.4.64.2312280043090.4143862@users.shellworld.net>
 <d28137ae-791b-4771-9efb-9c7705383587@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1851861505-1703800359=:4153490"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1851861505-1703800359=:4153490
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi Jason,
Which server?
The one where the mail comes from  or the one where you are using your=20
client to access?
As I likely shared, this is an effort to use alpine to manage my gmail.
If I follow, the  folder choices are provided by gmail, regardless of what=
=20
alpine incorporates?
Karen



On Thu, 28 Dec 2023, 'Jason J.G. White' via blinux-list@redhat.com wrote:

>
> On 28/12/23 00:56, Karen Lewellen wrote:
>>  However, because he has never used alpine, nor has he used basic html i=
n
>>  gmail, he is basing the expected sorting on the standard gmail process.
>>  that process does not use folders at all, but labels apparently.
>>  as a result,there are things I imagine alpine expects to find which is =
not
>>  here.=C2=A0 We are using imap for gmail, but my personal experience of =
imap,
>>  based on dreamhost, still has a mail folder with=C2=A0 saved messages, =
sent
>>  mail, postponed messages probably spam etc.
>>  and an imap folder which has other elements unique to dreamhost.
>
> Which IMAP folders exist depends on the server. Whatever client software =
you=20
> use just lets you access the IMAP folders that the server provides.
>
> You may need to subscribe to specific folders to access them, depending o=
n=20
> the client.
>
> Likewise, automatic classification of mail and moving it into folders is=
=20
> typically accomplished by the server, for example using a Sieve script. I=
n my=20
> case, for example, I have created a Sieve script that automatically deliv=
ers=20
> mail from various mailing lists into different folders. Suspected spam go=
es=20
> into the "spam" folder, etc.
>
> If you're using a commercial mail service rather than a server that you=
=20
> control, hten obviously you lose some of that flexibility.
>
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
>
--1949452079-1851861505-1703800359=:4153490--

