Return-Path: <blinux-list+bncBDYIZZNASAHRBC637GYQMGQEVKLBPAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id B52808C2A21
	for <lists+blinux-list@lfdr.de>; Fri, 10 May 2024 20:55:09 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43dfa95d4a7sf16227841cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 10 May 2024 11:55:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715367308; cv=pass;
        d=google.com; s=arc-20160816;
        b=XTmFlRkwx4JZraTnIpymMV2Eiy08zYwcGZ7nI+rVTz9rUhsUlQVYnhd8s8yskI/rWq
         xM3DnZ464IVR6rCP4KreQlLkGtf1RL1YfZCmII43qBgvTCGUzsXZzkT81DhwXvVsXPAn
         H/rbFrzI4WzctWU/M58eYCaCV9gvrse2sx1ArjF6Bm2c9Lh2BHHIDd05FG66umnf8t32
         VxomqtB/iouFgGXciaO3WkptRRWr1gq5mrz18bN9koeOleq5MsehE5eVflZGb9nlBl30
         isWE2A6bEdoaa3+rJyPIdCgrz2UFxa7kEQ8la5UInWCkq5Ji9nxM/bcOwXECKBP6RsoP
         aglg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=BKbJ0hvzdutu3UAl+GjUa0a4Uxh1+UkTl98512B6Wg0=;
        fh=g37uRA3fLXul2cfEJGykskn8CXTsEAeSU7oWCG83XcI=;
        b=zeB9jFn7tII+k2CppRTaRUbRKH7knNZNyrHjI4a0YYLylP3pWmKhOEaUT8jUnaZN7P
         6GWqOOaW0uer0iAl4+sm1+unH7Dbs9clXVplZsC978LZk8mvuIkPslOnt5jpGCm6De1i
         V+kSXL9gHt1GxEk2qKD3m5QAiv4wNOg6YZny9bkxqM4rNFaaL2SYnymCzpoPzPx97lfU
         FT+Z9M8Ki25Mc/o9cQFEEpidKfrADZCiINIJe6UWO8ojvOV23w3YKUZ7RwrF/peFqmoB
         ZnUwIgDXQerfDcpKUWQQg8JW8N0USbUqh3l32+gJhRvwSlmeZoL6/rxmRoMVlufyAfgB
         WlJA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.175 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715367308; x=1715972108;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BKbJ0hvzdutu3UAl+GjUa0a4Uxh1+UkTl98512B6Wg0=;
        b=wF/wWoWTIkKnZtt7+Di4WgJO7VsYzK6zrlAQWUijuKWn0v/8io+hXobV3DuAox5ULy
         /6os7jXu1pzuW3mJogD89vmnN3OCZNFCvVfBtIhuA9ZkivByd7urcvwL33lR66R0+B8T
         NyGnEUxe+8i05NJwMp1Mbdu9fJd6bIc79Yp8GrUFsRSh74SzYqLY2+Iy5sQaIa/h0UpJ
         20XevlZBO7QNSRvykfP5OM351zvaUP/5ZjMI5gSZXq7qgCyEjLVGkY9utwYtCnO248wx
         qLbIIhsj5AmeX/Z1aDkA5nyHqD/qDgTCsaqqpHzLyhJ3BQ/lY9H3R2CEd2ELAnA0tcFY
         dlMQ==
X-Forwarded-Encrypted: i=2; AJvYcCVBeMMkGw93AF//R4hiEBoNucKNdCiLE01cde/GyG/l456cuvqEuE02JRy9eVLpt7zl0bVrrr17Lbs8fWrCB7rj1PZqKj3JA4sc
X-Gm-Message-State: AOJu0YzBZ7pb83YSZZcPKuiweg8jmtItL/E0+UuIBC9U6dnrOx63Sh+h
	L9F2xYb/L31FwHwXGKF1hN3K18rBWlxYhniPuOVrTpGe4hJRyIqlICviPyyLgEA=
X-Google-Smtp-Source: AGHT+IEiaeEIlbb0/6SRNON5YtclrCzK4pqdxmwUQiZ22HjV6To47Ui/ITubLuFI+jls+q9ZAc7PNg==
X-Received: by 2002:a05:622a:148a:b0:43a:ef4e:7b2c with SMTP id d75a77b69052e-43dfdb09d0emr30486501cf.14.1715367308435;
        Fri, 10 May 2024 11:55:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7e95:0:b0:43a:bd70:3310 with SMTP id d75a77b69052e-43ded02380cls29343851cf.0.-pod-prod-03-us;
 Fri, 10 May 2024 11:55:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVLc8sf34P8knjlPkTxKpIckSze5wyX2xTscYBsTeWBAEy9/NYIdtYheGuE5MESXb6WOxzQV0yVBopRUBAKq+PHi0sJlfFIJy+KXCJp
X-Received: by 2002:a05:620a:1794:b0:792:c25e:2d47 with SMTP id af79cd13be357-792c757646cmr431683785a.14.1715367307293;
        Fri, 10 May 2024 11:55:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715367307; cv=none;
        d=google.com; s=arc-20160816;
        b=JHfkxtNZUl1RhQx/ANVlOX+aQq8XNq0xUYcoH3TUhFe4egqjJ6gqm/hdBw+5It47M4
         bG1secGW0wQmC94osn1CBbzSyAba0ejcsVkwXh2KtYX1Go3n3O0FLUF7Zr6t7Pun10oZ
         TtkEsYAR8V75cqm1btLzsqwRXMNC765oGXJaX5LkIcbbogk0qCw5SKH1BDC2vg20DLiY
         wmvEUhamYMPbwW7/YG8BWR7EGg4j0PzUcHMsk6vCd9x2VfM9YtWJIhtIFxrJREVWQOhC
         57bFskLMD6x2PV5Z47uhN6jDyyWygrqH9lYpNuU6J3l74odMMeAQjQU1wDFc66eyiL4B
         aJYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=LJfGjZ/79mq8xHRbpbssQY2hKA5elvqG5puf2zv+l5w=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Rp5DsbmcxxoIGY4h/6fAioZezaXJhvZe4Yi9CwzRVWWAQwtkavlqxfXynk5XdCfWfY
         AfXQGqpps4zWMQRCgBNgdGJzlAlvff5b7S8gztBg/kvs2b/ahqkLjLV8ouprES5xAi6F
         z6b07uLkrFjnVTJJnQFNja6ZEiwvKyT0BkC38yCIuDmynmrlKgdoBjS+v45h+p3hDAZL
         qG15WLwOKy/6+lCUzVQUd/IC2yhadJvptZByRWUm7EgcvsOOG8dN7hAFQJY5wW8hPhud
         T3BbSgm0Qi/xoQkx/SsnJDhReuvhEAGRKoyUE6LSizFMS2P99+qFV7Gwrg5FmqhvFSb0
         fKFQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.175 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-792bf364e87si380418085a.612.2024.05.10.11.55.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 May 2024 11:55:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.175 as permitted sender) client-ip=209.85.167.175;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-38-koFPsRA-P0yvRzDrmIPeUQ-1; Fri,
 10 May 2024 14:54:55 -0400
X-MC-Unique: koFPsRA-P0yvRzDrmIPeUQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F3513C0C891
	for <blinux-list@gapps.redhat.com>; Fri, 10 May 2024 18:54:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4C35AD96351; Fri, 10 May 2024 18:54:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 146BAD96334
	for <blinux-list@redhat.com>; Fri, 10 May 2024 18:54:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B776D8030A4
	for <blinux-list@redhat.com>; Fri, 10 May 2024 18:54:54 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
 [209.85.167.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-557-kk2H2eugOhegvZDHbULUig-1; Fri, 10 May 2024 14:54:52 -0400
X-MC-Unique: kk2H2eugOhegvZDHbULUig-1
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3c99e8958faso140588b6e.3
        for <blinux-list@redhat.com>; Fri, 10 May 2024 11:54:52 -0700 (PDT)
X-Received: by 2002:aca:191a:0:b0:3c9:64b4:a7b with SMTP id 5614622812f47-3c99703a60dmr3738289b6e.4.1715367291636;
        Fri, 10 May 2024 11:54:51 -0700 (PDT)
Received: from [192.168.4.28] (63-142-94-63-142-94-152.cpe.sparklight.net. [63.142.94.152])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3c9935bb5afsm612368b6e.10.2024.05.10.11.54.50
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 May 2024 11:54:50 -0700 (PDT)
Message-ID: <238c2b19-af3d-47da-b8fd-e12e2d21071e@gmail.com>
Date: Fri, 10 May 2024 13:54:49 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Fedora login
To: blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin>
 <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
 <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.167.175 as
 permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

I just upgraded fedora39 to fedora40 using terminal and it went very well.

the issue i am having=C2=A0 is when i boot up the computer Orca speaks in t=
he=20
built in speaker on this dell at the login screen.

However after i log in it switches back to the headphone which is great.

in version 39 it was speaking through my headphone both at the login and=20
once i logged in.

How can i get Orca to speak through headphones at the login screen?

I am using the Mate desktop.

I am so glad the Fedora keeps Orca up to date.

Rodney


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

