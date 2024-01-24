Return-Path: <blinux-list+bncBCS6LGFW6MFRBZ65YSWQMGQE6EK4WYQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F75F83AD81
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 16:38:17 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6819a5b5f01sf61134236d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 07:38:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706110696; cv=pass;
        d=google.com; s=arc-20160816;
        b=MK2cwJJma9s/PZU9vDWkF19DyF9AnDe1vWqn6jZfZ4KL+05q3UHE9SD4X4ypJEw7lm
         3qCQ5oiMlfa7kUihAvMwij58mHlH36xfJT2TKI7PCU4ytbR3ZubVl2bCGME5gWb8vcX2
         AyNh2M2eMI36DdZx6LkCupvqCjyXQIhOIIhj9E66+IQHq7jy53TG6E/tURRuQ/8Dp4/S
         PU/A1pIb45D0aG0Nj94f32oiivIw+XITsltD4Om629knLbMA/DDrDhRuHZ7Cn+TMe8fO
         Eporr2DTF/JznWRJBkjbyJvsyJRzwr16ispn3rmjocl0Uq+Gb/Xr1yoaKFtzuOr5Wnh/
         SNnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ACKXmwdRtwl0KVQODBFokAfmdh29+tp+ZR0ycKEdOtM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=dq0UtaFD9IiRpNFUSGbA23Ty1q6z+6HSKAF1ghTplrYyFp6m0g2d947YnE28lQ1agH
         Rje81siINK4T8awVSus4OJufNCxbl+bQ2A10fx0RMLIzx2uWXBK+3NMtHUhpBPdu2qf4
         Sh6mBpQiguXkD6p8H9gVYpZyrEdOCwQp60+aLbiFHbN8dde6AnfT1Mkx22aTv4bpQzJU
         HphR5JLZCI6e08RwK7cSWd88E8nXBB/LHzayzA8d5xILOlICrz7ZzT3a16Segj8b2676
         +fJHUT/H/tGuBora5SYAldanLQ0CBu6H0/h434hNqeANF+n294S7SafOUSwIGzucxw/j
         VuVQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706110696; x=1706715496;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ACKXmwdRtwl0KVQODBFokAfmdh29+tp+ZR0ycKEdOtM=;
        b=GFxjotXFbGz55/1Px9NFf+r6ZGvo9i68Up19KES/q8n2RFRedT1pEOZhlLpnnsSOuf
         TOCIVODzrJh8/O59/TT4ATyVJ0DiwLEgdhPbGByJ8TEo3tx9xOogvYNIZPTiwr1DPufa
         FN1jBpxxHRpSrNEhx1emTgp0xOhVsP0PI6QYMZ5GYw2jLvvyHjL9DT24qr0EmLtpSr5g
         wt3SqmH+ziZKBIDwiVoj3+eF/CfOroT8UlBwd4oetMQBYmfw2JkE0M4u3G3jjV2kkpJ6
         EJRd5m1UiSwQNVOlHNGDIfLqz96yulnQPNTeUT09BFBaD/JKA28Ek7Gouu+Y8rBFMGed
         asWg==
X-Gm-Message-State: AOJu0Yxunbn1JPY5zQJfXPjoHU5sArLpLAy6NBfsQnlaDY1C0lTmL2UQ
	y4oyGK7d2K1lxqEsuh4I84mrN4brCSbtFDaDDLRR1Ksm2sw5bH5T6zpuj/qzc2I=
X-Google-Smtp-Source: AGHT+IH6q7ls9Kthp1UHnQP5QYQxL4ureQadA6z4oX0M8pZHidYuenz3S5tuX0FfjMqWu0SL1TaVUA==
X-Received: by 2002:ac8:5b89:0:b0:42a:5ab2:9d18 with SMTP id a9-20020ac85b89000000b0042a5ab29d18mr1715459qta.80.1706110695851;
        Wed, 24 Jan 2024 07:38:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1310:b0:42a:478f:1cea with SMTP id
 v16-20020a05622a131000b0042a478f1ceals4168344qtk.2.-pod-prod-01-us; Wed, 24
 Jan 2024 07:38:15 -0800 (PST)
X-Received: by 2002:a05:620a:490f:b0:783:331e:550e with SMTP id vy15-20020a05620a490f00b00783331e550emr8407504qkn.61.1706110694953;
        Wed, 24 Jan 2024 07:38:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706110694; cv=none;
        d=google.com; s=arc-20160816;
        b=pVQ16ch+0Oaa77L2mXcz6JervFVVbiJNtjGEUOYI1N65pg4cr3UHcmOSGq557/hUiK
         lQpK4vr9FPHwvwNv1W0pCSciR9O0WrXf+dc+V2XfkwFv1I2w6adeMgEpqvko7nZRd+iX
         IuWJwGO+zZeGZRjn9yIISncfO7kCtNcQX9bqzcJeXhFNDLhGffWKq5pPLFHC58qjEieJ
         pJXxZY8eA+tOxuulRAc7oYY7aHIBBV3W5PzAjVYmFU7hzVbRWbzwJG2ZE4QKKR3CPxUu
         BN6zOmDN9auXZQucnyHlJ2WsMnr63LPamfpDXd9jTFu/LwbwyjOwp0AoMxUjFOZXcKYn
         zESg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=bX+lBn2t3OK3bKiBxP3PwdF3No0zGxpGnD35el2gQfc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=GQH3bcZo4h2WDv8aJ6dL9DdiPDCizPzkEiiWnIDE4paKGUHy2g1YniqhXVawlyRXnP
         huRNqcl6NK39ZVeoyTv9gX2sZC+o/Uw3uE1ho3HPi2ZUPMIb02MjnJbO7IhArVaWW8aW
         qlK5Th0qcRhYK4NCV5okCjVP3hb4VM3dYxDUK/bS5sdRF7hCgZXrltjQ+nAk5OzHFbHm
         4g2LKC9i1/SEErESzhW6jHYoQCYKA/RxC6zYKtmHncFSGgPR9Zvt0wmuxByAml0G6vmW
         dNWeHzsX73fJoAsI0ZVOqJd0ImJwsAVBcXNo2g9NrO2DWzagepZopmDkf6zavZPmPdav
         N0LA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id s13-20020a05620a29cd00b0078158ded522si10838031qkp.635.2024.01.24.07.38.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 07:38:14 -0800 (PST)
Received-SPF: pass (google.com: domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-653-T2BPxqmfObiNxB09I-ZfmA-1; Wed,
 24 Jan 2024 10:38:12 -0500
X-MC-Unique: T2BPxqmfObiNxB09I-ZfmA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E3953C2AB01
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 15:38:12 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0ACF0C2E1E8; Wed, 24 Jan 2024 15:38:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 035ECC2E1E6
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 15:38:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D73F7185A785
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 15:38:11 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-459-uATNs3paPdG_VsVnox1nvg-1; Wed,
 24 Jan 2024 10:38:07 -0500
X-MC-Unique: uATNs3paPdG_VsVnox1nvg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.160] ([79.231.6.88]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MtwUw-1rEYg80fHA-00uHhR for
 <blinux-list@redhat.com>; Wed, 24 Jan 2024 16:33:04 +0100
Message-ID: <986bb456-beec-4979-97f3-294f6c38074b@gmx.net>
Date: Wed, 24 Jan 2024 16:33:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: A thought for John J. Boyer, one year after his death
To: blinux-list@redhat.com
References: <14caa5cd-94a0-4529-aa49-6f8dc3cf2668@slint.fr>
 <4da55f05-73ae-42b8-ad6c-93c8079bbc5f@slint.fr>
From: "'guenter' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <4da55f05-73ae-42b8-ad6c-93c8079bbc5f@slint.fr>
X-Provags-ID: V03:K1:2O/y62DykUlPab8R2wS4Z1iMcxm2xIbXj9uaytP1OhFeGiZBjbV
 bYuYRk3m7TYvz7F7c53QjuqPDHxtvuq3tHuCRmFI5wTHl4dLtE8rCylJXSGF3mmAEbL3SVf
 2IAWylfTVJoXTvgd6r+jnkZNGqvzmrNTkKipFxSP7yCU8NpzVmTF+Mh7oD3YkSryif53DEP
 fAL6EbFwm0Kg1TzPKyobA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aRaHccVmXfI=;WDbM/7YnTFlsXQ0CmokT803wqdX
 nnDk4HuSxSqyse1e0Rl9HTJql4YsWa/bBU76XIUtqeAqhg0pfDoycWAGGeQB7WhI+dYjoA7GQ
 Pcm+llpuo1llvZXZP0gHb/cy7LxSm/tFeFTgZKHIgKLCQGvNs+egpZ0kAavl0FJ1ig+Sx1EYl
 3QR/iyXSJX818Iw8QH9c3EhcftHHGCfuii5HmpyN3qaKY6+4ItaQycPVqvjhuDlCcGwetQpef
 xQ3RYoyddkyj32YEKy7XMZuD4UoN/o867pcCmkDKGkKochMsuR8cLJSKYQel6rJkf08E9SHnj
 X4ZupPiTQoFf83S6VK19TTvnps13qsyhJ+eVYKlfxobPnh15CeCUPcIqME6ogasPObR+5wzVR
 HheCYBwZH+65hdDW/FxqpgHuJPQlrKc16rqT0y3AE4Mg5XfY519ySABIR9zdz6YnAiWhROzBL
 3q6LyGhLylTKs2/U8mzuWwv17Rxj8xJSWBShJzOCGpLj3PmCYRQvcqgokuVKXAr3/g58SA6FO
 zm+T4P8mQHWe8NApRi5zb4V6OFK9gC7bj64BEqhhm8geBljGq7McDg9cu7YylMq0OL3xKXEUN
 S+7LdbbZMPTjwq+tuvaQIl9pB3cMl9bSbaA0bHDqIpIoJHzuTcr4r+9sLfQAYrES4RliXZkcn
 lY8Rj8GUQJyXGuuozFomvR9j/lye6ZUXBWFOk7jnrIokt7LVpYH5Rl3SK4EWZbLXmCvVPOgvX
 KVh/PRNMlHTBTb6Inf+5CekUY/VAAWCIszwSXiahJVCZ4eK3sN0L2E/jVZLnYbgkVTujDi9hJ
 HEy9KL1vZZHLMdCk0mj5j9S7PUT6/5Wzhk0pDLAwjV0PZlqPIgJkZ0yzIhC2iUIj2EfFAZgBK
 +C++Njf+d0J0qWQ3aKWiZ/jfOGbBob5B77A9Zle69LtKsRhZDojEpYFnPVj5tqsXiX1E1z6g8
 yLFTqA==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.net
Content-Language: de-DE
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: guenterk@gmx.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guenterk@gmx.net designates 212.227.15.18 as permitted sender) smtp.mailfrom=guenterk@gmx.net
X-Original-From: guenter <GuenterK@gmx.net>
Reply-To: guenter <GuenterK@gmx.net>
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

Thank You for remembering!

Am 23.01.24 um 11:26 schrieb Didier Spaier:
> John passed away on the 17th of January 2023.
>
> In a few words: Born blind, John lost his hearing at the age of 8, but this
> didn't stop him from excelling in his studies and becoming a software developer.
> He is the creator of liblouis and BrailleBlaster. He has also founded two
> non-profit companies: Computers to Help People, Inc (CHPI) in 1981 and
> Abilitiessoft, Inc. in 2006. These websites have disappeared, but fortunately
> the time machine has kept track of them, as well as his autobiography.
>
> https://web.archive.org/web/20051124103638/http://www.chpi.org/
> https://web.archive.org/web/20230419094208/http://www.abilitiessoft.org/
> https://web.archive.org/web/20230307214907/http://abilitiessoft.org/founders-autobiography.html
>
> John, we miss you.
>

--
.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

