Return-Path: <blinux-list+bncBCHY5TMQ6YERBRH3R6YQMGQEDWJFOGA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFB48ABC91
	for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 19:39:18 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5ad0529fa08sf3426188eaf.1
        for <lists+blinux-list@lfdr.de>; Sat, 20 Apr 2024 10:39:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713634757; cv=pass;
        d=google.com; s=arc-20160816;
        b=CcLDa6JGnKHrzA8v0WVbQspWYVYLsoewGjedSkhNSsLs9fswUCjOksfVexsNCkenQx
         GZIatACieb4A7ZTmvVMgRotk+WGyDENrX99O7WEM+bE+EVovoHeYOy7mO3o3QcyDpr+N
         vEb7cCKxjJtjKOT1+bXW+PPUHpUhFYsFKnG3V/cddmZ0jRvPM4Y2cN1MVtPmlRGoYFho
         gQD/vFVDqtyg3STXmorhKcNhXr2DO+zLovfNWSn4ZoBPGoJNpfg7Hku6BQtsTbzTZFfz
         iop5oCZoRDQirX1qeYHQxFJSz288GhnLmtrmiR9+nT1mp9tD1XQA1jukG/7h9XGmYebN
         DcSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=42aNKXNtWSL7UGk2HIEW4KvvwKyuchSEqWLqCNrFYBk=;
        fh=a4+TB923O6GYcqwZsNUCiDy4RCR+Wj+BHUl6jXECmAc=;
        b=ElrKZbkIiv/wzbIrY5bqlZNod0Ioq3emzYrlxWn2+pEONlxLOnz3h/MeZnw3ZqmZpo
         nXsHjeHgIM0Zo9CKUHvSngG3RXjmxZOTR2GBlyqdTUjJxhyBteS40waH+O8SdShrv5oY
         WXp6TwR/KilcljOqMsTbw7TUsP+1JTKxJEB7TUqRL6lTDEX9+tCS35qyaOvbqggChurU
         Av0rWDeXRePrP9ZTmD572xQWO0PyTKqRiM/BLanuX2xwAWvKXPGAEWPEsEgACOBpYSKS
         5d07CbyUAMxgukHuXYr1Czy2Hrh+ETkE2EXjA0q881hgB2Dib5sC8bNAjSPyjc2ifB+n
         00Nw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713634757; x=1714239557;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=42aNKXNtWSL7UGk2HIEW4KvvwKyuchSEqWLqCNrFYBk=;
        b=ZOseTtx7ZT2+VBl0R9MoxULJ/o4Plf6Uvm4Rca1aywm/h8lWTnOhvL3fN2p2CBtqQl
         eNtOxoyd7HbtghqeZUPVbovDn0CRXzMWgk3NidiXwanTFUlQfMlmyXwcggHOfBcs5zZ2
         qcXmIxxQG/tuM9RQpEBbguW7wMuktX+ziqx5SLgPUXbdc2XW4dTKIsIJkDMdO3DP6yQC
         yktBQsP+GQ2cbD2AAoj/ra05u6a+klC9oHqwho/n3dDOPBDhPfvgDP3qZfodgoMBEjNZ
         /UvwI/1SU0+f1U5orqQ3AJI9getPNwvoki+uspnUC34/dBsT7r9zj/VERhWyZTFrx2hD
         CFQg==
X-Forwarded-Encrypted: i=2; AJvYcCVLpHWKESf/E4sXi306oAWBzA8pVvl9Urqz/PK2f09twYvD1BTwWg7fzYxOMu0s8b54KFJeRbSF2RRkkic1YsjKCPGzlcFds1N3
X-Gm-Message-State: AOJu0YyHi2YBfLmDbQclJoz4uHTQR9HbO2z4boCD3KUVtPgf9U7FDPWL
	OuaVSHgyz4ZWnfHqQOQcr2fbPeVxhldxrQnzZJjC4B588T+i5VTAFzFMdRgAC0A=
X-Google-Smtp-Source: AGHT+IEtTEJ9H3546M8s+PT18liv0gATwNaSVEEfdEEzk+geQY/bSUKKOVfuf/r5HJbe5FdQseg24Q==
X-Received: by 2002:a05:6359:7615:b0:183:ef80:1e7 with SMTP id wg21-20020a056359761500b00183ef8001e7mr7825416rwc.14.1713634757357;
        Sat, 20 Apr 2024 10:39:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1c4a:b0:690:bae8:6289 with SMTP id
 6a1803df08f44-6a05d76d14als28102616d6.1.-pod-prod-09-us; Sat, 20 Apr 2024
 10:39:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUnIYCKBm3ZldVqWS5PqgX5ASFDmo+ma+RcsaD1tHTgZteJcvXWeioL5K/D6pbqsHTxdnA+ZAGhZbXlb5nXHlKRM3lmEUslaLVAWWf0
X-Received: by 2002:a05:620a:1003:b0:790:64d1:3b7b with SMTP id z3-20020a05620a100300b0079064d13b7bmr1815232qkj.2.1713634756332;
        Sat, 20 Apr 2024 10:39:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713634756; cv=none;
        d=google.com; s=arc-20160816;
        b=vP6xYrXeP3zgCsejEGKwAihEyqLrNHeq12qEi/b0oUxnTF9r9FCYic24x7JUqQUm0x
         UD/a/AL6Vh6hFqlBMProFUgSdfDAwcTvPlV8iKpTZqxZo3Ef/KEcaLUeit3X4dK0xxRO
         19oBwNOS1EPcH5c97hnYf0Mk3PqOwFaIlfNdgK5mL11dVDY7n0t35gUMXzzwaNO+5tON
         rKGlvTF8RqEBVzSr5MqSVrlHjSjHGPDOsqiRFJkHWO8OGzkGEWvxBuClLyvQCvuczccJ
         HIryA+Nk9CCuTepCuQznVHJr6bhTlL50WHhzVh5WN6k0DBdKAH716WFZ/CY38uZhp2oK
         kCVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=vhCa3mFli8IsEIIw2F05g1CjYl5ozbTnXazUky+AC8I=;
        fh=oS6EXIHN5tKg4eWRzM5ctkFMITCs5o85+O7VkEhsn/k=;
        b=aqXdGY14EGQJIkSgq1nOKAQpQyYQsbgSYrt5CQ/IQ8lU7kWOmbnlnswskPllo/HvlS
         T0rGgDDZGgRUFniovzxu67M9/W7lISa6GS14hn5jY3VjkhMWppmDRjw6uEh0bXKxVCzr
         UqNxcg89fGcSS3hu5xEXz5PNzjirYrI1TT/QF/mbQUtHQEta/kTraG8jfK1ZoBHbSrSF
         pAEuV+O+x673gI0ZKx/LhnjnOU+QDh9CnxbsTYL9yyXEjp1dlEB1BJ3XQraIXkZNHKpt
         3jP3MLxnueG3iP3pr8DTCZUxIIOZ6Fu8xEGr4QI+I1ZPB45UaGnUBW7NOvY0uD9MtLSA
         ngkg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id bk28-20020a05620a1a1c00b0078ec90570afsi7839800qkb.26.2024.04.20.10.39.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 10:39:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-317-vtIxGID-PYSJSVhho8qHwg-1; Sat,
 20 Apr 2024 13:39:14 -0400
X-MC-Unique: vtIxGID-PYSJSVhho8qHwg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32FB71C04B40
	for <blinux-list@gapps.redhat.com>; Sat, 20 Apr 2024 17:39:14 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2F08443FB1; Sat, 20 Apr 2024 17:39:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB5AF43FAD
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 17:39:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EBD7811000
	for <blinux-list@redhat.com>; Sat, 20 Apr 2024 17:39:13 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-ZBhBSAchMriHP1r3MwW39A-1; Sat, 20 Apr 2024 13:39:08 -0400
X-MC-Unique: ZBhBSAchMriHP1r3MwW39A-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 004A9415CC;
	Sat, 20 Apr 2024 20:39:02 +0300 (EEST)
Message-ID: <865b129a-17df-4725-aa47-e48387a8f39f@harrastenurkka.fi>
Date: Sat, 20 Apr 2024 20:38:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: writing yaml visually impaired
To: "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
 <51c07b57-049a-4256-a757-0036a3355c30@jasonjgw.net>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <51c07b57-049a-4256-a757-0036a3355c30@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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

I don't have a braille display, I don't understand the logic of the file=20
layout, if the first block is for example four with a space layout, next
a block can already be with a layout of 13 spaces, there is no logic here

On 4/20/24 18:57, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
> On 20/4/24 02:04, 'Elias St=C3=A5hlberg' via blinux-list@redhat.com wrote=
:
>> Is there a solution for writing yaml for the visually impaired, e.g.=20
>> docker, ansible and cubernetes use this configuration language which=20
>> is very specific about layouts, is there a converter that would=20
>> convert the basic configuration to yaml, for the completely blind
>
> Could you describe the problem you're experiencing? If it's=20
> indentation, you can use a braille display, or configure a screen=20
> reader to announce indentation via speech.
>
> I use a braille display, and I don't recall having any issues with=20
> Yaml files.
>
> To unsubscribe from this group and stop receiving emails from it, send=20
> an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

