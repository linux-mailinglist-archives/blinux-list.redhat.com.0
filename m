Return-Path: <blinux-list+bncBDYPVTOXSQEBBTE5SOVQMGQEN6XAH4A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 082987FA7CF
	for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 18:15:58 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4239f5c1f0fsf38026971cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 27 Nov 2023 09:15:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701105357; cv=pass;
        d=google.com; s=arc-20160816;
        b=vsI1SLuXwO9hbvqqn7ueiu8yuzjHUNuPlkI2qyuUkNq9xCPHq72OmXqXiFnBsXSOzQ
         xQhXY0PTl5qj4BK2q/GiFKMU92wqP2vCFmZe5vznrEKHKe52cfg6uCWh1zxeUuidHKeo
         GAYw0aL+z/98Hkzn9ZZrsAz+hGp9WwyDWS1yDjFI95ikzsznldPFR3kESpKAmr747cIR
         rE03IFgs4q0IhwdigUkv/EM/GUpX+aDbyN+5Y72RcxTXn7rFmyA2+1WbsZpfRZPLcLu8
         NGDGT5Za6vJFJiSJXGckP7f9Rt/sFoFpOIraphGaY2gP3EfbbEUZNeOLsEgNMxADu63h
         pQ1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=+KnogTZ7Th+NQe7hW5JIB2bRHC9Z0RY3GfiBNuX0Oa8=;
        fh=QaLKB8guWpYixZjyRUAiKsqtWMORigN1VDK+zioD5DA=;
        b=NPHNWPNtPH8zUerTzkjW1vwqfQTuMbXW6R4kAQPGC4iZdtuC14/smTMh17iFBQxqPH
         G9zz8rrY5lxxvKcR0onJSMvO2bXkmntcscA5hc2UZzzN6sKadxfGjJ4y1iammxjQCXkM
         PGd1a4zdxpeA27r0iXwxmciHx6JWtehHbyVpKirQzbZHs4UTeijQoyNl0OmGGejCdM3F
         ofwV3PY/wjQ798//tzoaU4SlNWzFsgq0SaQ5Pmt6qdzMOJIcW1p/MlAihx4G9S+/fkyr
         vIICwDzX1p8Hsx3BgnlrM8rDdy53syqyfMKKQgyucojjGt/aG7hXSL//rvmzJkUiesNb
         GTmw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701105357; x=1701710157;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+KnogTZ7Th+NQe7hW5JIB2bRHC9Z0RY3GfiBNuX0Oa8=;
        b=UKhOrXzaW84EiLFJChtR29agOZU6s16GcEkyqeISdC5xTdyCIQ/9aVe5XPxxwyZpq1
         tgagnuQYtW6IPeacLk57JhWJ25x6xBl9TLBksz1GQpxFf6lDF/Scx3HtLNX/mdEMFU/v
         M5s/FlCLsazfZ2T1QzpW6Erbc/QK3zk0ZQGPr48pwxYkzJlKJ7UqJhmWkopYx/yC2rR1
         EjgrtlHYiu7p0IYncWmkgKMFWI9um+Vwe75/4e1ktsx9pKPoxumF46tHpeM/bx5pJjVM
         iw75BgHLbVPpiM+el14bczQspFDQ9yQ87Lrq4bY2Oy2TV5ezN8UfL+GmCRMJ3LUL91Hi
         JouQ==
X-Gm-Message-State: AOJu0YwOdJFf0V0Ksk0kxqHFdhNywjDZT9HEoWuOscTTm1vG7NmWQgvn
	9U4japtSHtUbjjvfEaJv+RjDfg==
X-Google-Smtp-Source: AGHT+IHRJ31noYkM7M5/x72puKYMpa7o7BymrE50kR2sZhMymwsYjlvsdFEZpVNQ+qA8D/rCe+k2LA==
X-Received: by 2002:a05:622a:410c:b0:423:a730:c7b2 with SMTP id cc12-20020a05622a410c00b00423a730c7b2mr11858645qtb.68.1701105356970;
        Mon, 27 Nov 2023 09:15:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1c0f:b0:423:9554:656a with SMTP id
 bq15-20020a05622a1c0f00b004239554656als2239220qtb.1.-pod-prod-09-us; Mon, 27
 Nov 2023 09:15:56 -0800 (PST)
X-Received: by 2002:a05:622a:100d:b0:41c:ad7f:5720 with SMTP id d13-20020a05622a100d00b0041cad7f5720mr12533081qte.61.1701105356124;
        Mon, 27 Nov 2023 09:15:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701105356; cv=none;
        d=google.com; s=arc-20160816;
        b=jTifs5hZ/kvMXI4oP+INRU0NMj5egOdaP0q8iOFuQmGh8nhAigwq0GEvo2S97jpMsW
         5rAJ9M7b/CYnfPRGXMKvffJRWt8lCCcbJEFheGTPnsgaoXwiR7uwZ23ijiJeRk2hMf0R
         jZuTgNvf9lg8eX1zTe/GM18VPZ/gq/eTxr18g0hsVdMLew24jMOD2t74EHZbWF13Rie0
         +KsHvtOXdLFuho8Dl6tlvFdlxbR1A2XoxzW7CvYtzkwDj2QpElynSYw5dervXj63UMs1
         3XUw16WINomdHjMExMjQ2Sdm4sX+fQuiY/VS6CB0q0srqE5Raltos+thopNs0ger8ujP
         rPZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=f4wMthxiilaHC/iaIB+IOe3Gg2idUbXUDcPyZabyuV8=;
        fh=QaLKB8guWpYixZjyRUAiKsqtWMORigN1VDK+zioD5DA=;
        b=yWPA+GU9sSm2VEeJfOFA4B4ekxyQOI1OU/s63d3qaN4BgkXtWMYoVIWlqMKewGrwA6
         HFfyuOmB4ldV7l27+gM4GUtXuL/f0FMg6Q3e1EXcO8Z9WXiZKLlFsXA+XdCXidmabyeG
         j/tAQCNq2cDaBITx30dwHtZQVPq3pFsW08tll/z9lZjGvxaC34OQduER01cnrAVHpczH
         5iIv6M9nrI14DwS56YGnAIOY9gWp3szWSPX62mACS0VqoCuhULshVnpA0FAoSMkx7W9G
         ulkWDUd0H7D73JmvJd2KZsWQBK6vBBW9rVFR/NEjRGVGJ07XQrHmI5qDbHONekWCjZl0
         lOCQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id bs14-20020ac86f0e000000b0042393b434bcsi8720954qtb.675.2023.11.27.09.15.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 09:15:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-313-3m3FViT-OvKlPlAHn2WsFQ-1; Mon,
 27 Nov 2023 12:15:54 -0500
X-MC-Unique: 3m3FViT-OvKlPlAHn2WsFQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 99B911C068DB
	for <blinux-list@gapps.redhat.com>; Mon, 27 Nov 2023 17:15:54 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 966B65038; Mon, 27 Nov 2023 17:15:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F13E502A
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 17:15:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 67A333C0FC80
	for <blinux-list@redhat.com>; Mon, 27 Nov 2023 17:15:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-656-SRobAt7MOnaHjsHVGZM_YA-1; Mon,
 27 Nov 2023 12:15:52 -0500
X-MC-Unique: SRobAt7MOnaHjsHVGZM_YA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SfC0S2HN9zttV;
	Mon, 27 Nov 2023 12:15:52 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SfC0S230rzcbc; Mon, 27 Nov 2023 12:15:52 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SfC0S1y5wzcbC;
	Mon, 27 Nov 2023 12:15:52 -0500 (EST)
Date: Mon, 27 Nov 2023 12:15:52 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: "Jason J.G. White" <jason@jasonjgw.net>, 
    Chime Hart <chime@hubert-humphrey.com>, Chevelle <cstrobel@crosslink.net>
cc: Blinux Discussion List <blinux-list@redhat.com>
Subject: Re: EmacSpeak Won't Compile
In-Reply-To: <c8852aae-ea60-49e6-b73d-6a6438fcaf2d@jasonjgw.net>
Message-ID: <5fa24196-30ce-58b3-b0ee-4cfe44f7f685@panix.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com> <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net> <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net> <088e0963-afdc-4b90-ae7a-09825b60f7a0@crosslink.net>
 <a0ccf8ad-295d-0f91-2338-8af7367ceec6@hubert-humphrey.com> <866f9548-1084-5352-608a-030d30c6a8b8@panix.com> <c8852aae-ea60-49e6-b73d-6a6438fcaf2d@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

Good to use the report-bug program on debian but make sure your debian box
can actually send outgoing email.

--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 27 Nov 2023, Jason J.G. White wrote:

>
> On 27/11/23 09:43, Jude DaShiell wrote:
> > emacspeak has only one developer and he may not have had time to squash
> > the bug since he has other employment.
> In addition, it appears to be a Debian packaging bug, and the author of
> Emacspeak is not responsible for someone else's Debian package.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

