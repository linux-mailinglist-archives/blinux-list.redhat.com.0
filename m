Return-Path: <blinux-list+bncBCV3N6GOXMCRBF42VO2AMGQEELZQYBY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0C192991B
	for <lists+blinux-list@lfdr.de>; Sun,  7 Jul 2024 19:15:06 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-447d66293fcsf30731401cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 07 Jul 2024 10:15:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720372505; cv=pass;
        d=google.com; s=arc-20160816;
        b=XceU6lYXu9vSwDckDKLqDepZJqY7tCWS6Gf071rKrnnk33D15bu7nMWEhgJln0wmDN
         7sxPCNj0FwjjU5QyoWsA13veNSHOwX33KXyNzh1JcqtqgBx2AfEW5yNS74HYeN2ebl10
         tN1MWMSu41aTiBnE5zn4Mo/CYAjssrdKjKd1feSG65FgY2CA5/olo8irmy42y01e08e6
         bEFFHyfjwZTM8iWjPegxtiP87+QXX6jYmjgj4Jrh+l8NIVjkjeRAGqoO+qa4Lrl7Lap2
         q0mQjfKLk4lbC6Wzq3EAZT7B4grRpyj8PHXO0lPaXjntJhA5yL8BIQc1X2JQY6D2nUhF
         +Q+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=ggKS1VfrTC1xqVsGhqPIkTMLSi8vKe0QY774y02EPOo=;
        fh=wjglQocRf78Jn14OjBFiF3V0Xd+wLPguTJOulsq53AY=;
        b=satmSOWXSVwK9tYfi7xk+2Lv451jsXn8S/BGjEAXdcm69vVLBbjkREIApDHuHtvGop
         t2cu5+dF5/6LVqN+Rf58YpGUHyC6wReS4We48afMoShKVFPv+PUKY/hCU2yVPqE1ZXD5
         WhT2YzhcEBVYe536ahRvR4vFHjWR0w2CqmzVdzMcf9v7yhrVHQYg+qBbuib3X1PYqsVq
         EJ92xyZbX4Nzl8a1CokDJEGGtEB0gJrN72i5OkxepJQ0/S/tPAHYmXol5ThkcjrFijcx
         XX9T/YXfwK7KWKGWlGp0vvYXT2jFgfHMfGXOPuhfGzn7DHjJlA4MgUYJfztW2g69p+Vb
         M3Qw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720372505; x=1720977305;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ggKS1VfrTC1xqVsGhqPIkTMLSi8vKe0QY774y02EPOo=;
        b=ZsghrcLCIlkit0xP3GbP23EWHvTbrvBbUrkrGvYeWUuMkOTFOibWER3nNjuL2LbbDw
         ujOIGvcxWOW7H84L7+9Bs1r+tfzutxKn5RpeEXBRJDRjv+T41Dz13N2ewQowmvKqk0cD
         pmWNONtJ6l6nxHFTmYtguifN32EcQ4Y2SP4EHa0ByB37XQhyPtCBhyYM/XWtughODFGI
         uury96VW0oNqV2ULBZMOKNCuEYT+CfrMaz/EMDx1jw/1CTE+zq5G5o2scQfrp41FZJsS
         /+Vc9sWoM5TgVsLVE15Fqxm6Ko1RiSx/FU+ONn8+hGeXujkB3MOBEyBIwMWC0tMEeIE4
         YjZQ==
X-Forwarded-Encrypted: i=2; AJvYcCUtXnf1rpTgTa42VOHHFnx4W9zGMr/hIsOwGO/OtzE77gwBR9/8s6qXar6YqMWjHawt8LSfxV1ZMSDH8MWhZbzPM5LakMpPM5Ky
X-Gm-Message-State: AOJu0Yysp+fAL3TLVJSonzUppkDdskQXz0mJkVWbfevBhStWYOQkoPvD
	soYJRhk11Yi4/RzpWbzZtqh6OkLioPXdn3bK4ziQ55K4+A5TMyqjR8uXiCNDmX4=
X-Google-Smtp-Source: AGHT+IFn2IxSDnkbI7E1NhObvhtCjimfkvRNfaeo8j+EEzUKg8XE4+yQtQvX8QXkycPfUVJuSi6dLQ==
X-Received: by 2002:a05:622a:45:b0:440:6345:257f with SMTP id d75a77b69052e-447cbf9c277mr151301111cf.60.1720372504294;
        Sun, 07 Jul 2024 10:15:04 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:2d6:b0:447:ca9a:34f2 with SMTP id
 d75a77b69052e-447dfe46ed1ls20516991cf.2.-pod-prod-05-us; Sun, 07 Jul 2024
 10:15:03 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV9TBRNbyCWydpwRijKXczatWK87xqgNmVtedJt5W7SSB/Zud7Dh6KJc/lcjBvcElrTKdaNmZcFZhVcux/2BYn++uizC80TOHVDKQQ+
X-Received: by 2002:a05:620a:20d1:b0:79e:f878:2654 with SMTP id af79cd13be357-79ef87827e2mr637115385a.41.1720372503024;
        Sun, 07 Jul 2024 10:15:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720372503; cv=none;
        d=google.com; s=arc-20160816;
        b=g5P+DcDzcpuKHL2jK7e4Ypm3pKqtz1mhQhfHq4PQb5kqVMkUCKbbZBVwvzC4LpxapF
         KIo+CnR5PfpM4YHKsXAyKYAGVdrgazZazX+c5Gmw8ijpObvIw947Pi5FqAaYeztbgGrs
         Ua5ZSZCvPu5WIjJCEyACJBa/H+KNt17cHV1rqbtNl9THhwjql7AWQzA03fZf0ntrzJUi
         U1n5SBoH71rkiUAs3lSnU4y01V2Tp5K7VqLjq/MwOF4z65JSxa7J+sBB4sxTLb43wxoa
         EsFbSngJ/GXysRCYs5nRy5E3LvmocIMQTYjZ6XZvI7U1YQe/V4pQpTB+i917pzbZvvvB
         ev4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=L6gIKoGFYrUDUUnmiDGyuuD4mtkUyCToaLiQ628bwdw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=wYy59sWrrQsPyxVWHBB1krZQOIe6dAhs55o7RDdv+LfDD+GsoDJyuZo3yXsG42owhe
         gW5rQH6u0Wn0TJzOVC3DZeoopyTTB0k/mMrYZyymlXVT4+QWsprC6I0x88uYDiHl1N8p
         BDtsPs8lSYL4eYHrJUPpwtPbD5A/1edL4rVVzbzIiGrUtdgwR5sqBf8gYrYZ6NrA2oz0
         h17OwmAyZLlfNmC1iR5+yRraTlhrpiWpyUgAA6X2aI/2RFFGXSXO4YmoVo+q+G+Wd7C5
         4U4hsVkjF8b267P9IrvVwbqIghvpJwYe1buoxVNcNZASF4YTPCZyRevxEHt0RSFKd416
         8dDg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-79f0e71abbcsi68739985a.773.2024.07.07.10.15.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jul 2024 10:15:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-575-5He_JmfrOkWUWYmsPdGnoA-1; Sun,
 07 Jul 2024 13:15:00 -0400
X-MC-Unique: 5He_JmfrOkWUWYmsPdGnoA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0DA619560AD
	for <blinux-list@gapps.redhat.com>; Sun,  7 Jul 2024 17:14:59 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 95BD81955E80; Sun,  7 Jul 2024 17:14:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 937B41955F40
	for <blinux-list@redhat.com>; Sun,  7 Jul 2024 17:14:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2D8EC19560B0
	for <blinux-list@redhat.com>; Sun,  7 Jul 2024 17:14:59 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-613-j69vex4EME-BMA2LkvfjZQ-1; Sun,
 07 Jul 2024 13:14:56 -0400
X-MC-Unique: j69vex4EME-BMA2LkvfjZQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M3DJv-1sPfSV25XB-00F9tt for
 <blinux-list@redhat.com>; Sun, 07 Jul 2024 19:14:54 +0200
Message-ID: <f5ca9bcd-38f5-417d-a69d-63036f681a8b@gmx.it>
Date: Sun, 7 Jul 2024 13:14:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Is Any1 Useing Mary in Linux for Speech?
To: blinux-list@redhat.com
References: <a8e6db16-d190-6724-0be2-ae1bb2ce5406@hubert-humphrey.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <a8e6db16-d190-6724-0be2-ae1bb2ce5406@hubert-humphrey.com>
X-Provags-ID: V03:K1:9wpXKMGsPArUbn0uPWILsDg4Vw1n/Do6Tzu2xLEyugD5hoEgR3b
 yYcy5GTfvSFC2Vo2zEtJmTIeHGpDhTnIZxLLsF8aUM99KZhF3z4sVY5pxsuooREELuUGSV1
 VHkeD95iuWZq+bmx/jtOpmnYzJG/Awy8q0/c+iEcX4wlyrq30USydcxG7p1MdyB3jjXGefv
 Rjv9uDAFNTEFJLumz6vlA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:5VCqOmmPiIQ=;7s6GGX8i5NkkL/m/Wt0Yh1GHhWE
 3GXuMRzS3qOlI3TlWDsEbtnGvZqk+Da6LpOhnHtHoTlYLvqyAZrarjkhVCeWhoGwA0Xriy1ul
 Sol+muladXjMf8weZTN3JqyUnMYbS2Al+fTbnyMu3uctt8BZza1b0KNY8LfzvvlvWDKAO/ZYj
 AekupiH89kf2dGGim7vAivHz7PZXG8vOjj7yqf4xZaqL2mCmuSs2ohSY/LtbsVUdnJabVdMD9
 pbTSlTM8e7AsepL/NeEBblczsB0kSp5aFq4tFJMH+oJGWPdExflqVWQZgQZt3Ovdsjtnzpzhq
 NM/hBrmPGJSI0TSI5yUXumn/bI0OhSm2NEQxbpODqBv66a/octcF75NhTxY2SJKOb2VbkOUvl
 Yuo2RVoLUvxXjeLH3SAJyA3oGVJGS+GzPj9jwkEAC4qbDE2JLBu1QxptM+qCvDaVNqR24mv4v
 WJrsh/ex7qcMK74v2XA4yUbryYriI/PyBVHcWhOmQyZmsAMJoC6OEG7blMyecV1NjtXiPIkt7
 yH4p4vM0ffYnOjjAQohh87lJFgGXZYlICYJxKU1THgwlTgBCC5YW95KPPpfNjsZ7jbx6YZ4ZU
 XYiTAb5FeeQbqssMTYYuX32hrf7U+lEjpZqcFtIQvg0D6X0LzC/hEAavUBLJK5m5l4lUZNJd6
 /3vtrQns3OFGYflFyLFLG29bQyXQreYaHNlFex3UZfIQ87s1OBtqNa3kAL3uoHfpWjf9EsOwi
 p+ZYZz26BqJYGe8OaTxnFe3jAvoG9aTqdl8flOOaDqt+Sb0fNFNmTD6cAe/vcO3J3Urf3occS
 GKLymkJiI+1Kp7/SJWwW4m+T6FztJbKbtUDvWqlSQ5so4=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I haven't used Mary in many years. I think I had developed a sort of
working marry-generic.conf for speech-dispatcher, but actually using it
was very slow on most of the machines where I tried it at that time,
really too slow to be useful for screen reading. It also suffered from
some glitches that made it uninteligible at times, so I pretty much gave
up on it. I don't know if any work has been done with it since that
time, probably 10 to 12 years ago.

~Kyle

Imetumwa kutoka duniani

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

