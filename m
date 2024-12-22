Return-Path: <blinux-list+bncBCHY5TMQ6YERBIENUG5QMGQEVP2O5IA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2D09FA6FB
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 18:04:34 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467ae19e34bsf113254521cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 09:04:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734887073; cv=pass;
        d=google.com; s=arc-20240605;
        b=jYqCa/rz36N7UA3NTbMtc0aOcH/1QYTIgCkRz+Sk/2uzxQeJgMsP+Mj0Z+7I8jt5AT
         CJ1OZ8PQnP6SJ0NLY5wCA2rnwDWxsanDRyk8gQfUNpAVyduk/9GQQwW7G1ej8QUxc+/J
         1hsdw5wIxNnZdLvAgveYmU2RmlwZGsNm5gtyIaKHFm+WWanGduzBCFpmBGV2zKBXJ+8Z
         PRNWMdKKIR20mltklolI3ff2NQI5LE5SLcETFhA/9KH57KpIeMSdLowIEcyPqS5kW6TB
         Q0a/Zz0YCDx7OnZ8pux2xwsZ8oxVoSUgCf/XV5tVSf1gE8cfEOem5ESA24xhj8HkeLof
         f0DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=gKAns2jzQO5+RmqI7ffTJ3RMWNkeMiaMmkJPfLbg0s0=;
        fh=Qw0K+oMxEit2H58lKH31DRCh8A4/KT8wYzw3tsSicFA=;
        b=JxT9veIKB1sXLdcLwumzspoAcVTB5jl2kX1iQowNcIT3FvKwH4Qr2XBXS0jk9l2GKg
         28zd2BnWHeaoQa7/Q3+6RSJDD8eTFvjakdf/YwLuyxUtjskUL6gwnW5wgRKAkFeLOrnh
         OyGWqm0GuIRhJEPZW1/BvezJbawYXHwB8NT++MW0ps5QDh6M+93oGKTEYuhqDGFwtjr0
         IqPGOJoeIyHVnEpDYstl7o2jCSQX8ah5xyAZRljTBV2aJAzhcl9Idnbb9OuMxJej+O97
         +oQpKX1Qli7i9aS1C7uyX3sM0EuBSJgayiV70OGb5PjZFCKHSeNbMt4fEMtTZCnaIFS8
         5UKw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734887073; x=1735491873;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gKAns2jzQO5+RmqI7ffTJ3RMWNkeMiaMmkJPfLbg0s0=;
        b=eEkQlevRIODyQL6Pwjq8FjvqLIRiItyi52JUKSWkVOJYf1ORf64yHKg4fzpNSgUnB3
         hG6iInkaBGRPtO/uawRPSm4Q6uFGHEZhSm+DHq+Wye0mvX/8XIboVjwHDFCI7QU0t0HD
         4WJrEerYQjNCG+tbsq6vZqHrQPMcxkRCtwqMcOBYXnop11weyIpcFa51q8DhawopcKgo
         Z5L+Eft/3KrBac09qn3Djy50C+1sv18pp3wM2WaKCNgvGSfdJAUene2Pi/uY8bTHOiv8
         XC1v2CEvg/vaKngJTdvcDeBZXO7lQvYyl+6SSmKC6Zit/q7MCHGqaBwyG5b9vj1xHDxW
         Mclw==
X-Forwarded-Encrypted: i=2; AJvYcCVocrAq/Ei3oJGhAVXN+mxxzIpGseX9MZrQpLveyzJBGpqFVIXVK9iXBQpyJW2mACemWzUVaw==@lfdr.de
X-Gm-Message-State: AOJu0Yxqbh+SK27QOY66e/wE/UHnG6If2lRaouYb66vktnosnbHgtTSW
	1vBeqfAwXVWi/AZcg9vyOGj/qpMB33JScmn0jUk60Ijnm0Np/XXAYxRgu93WjH8=
X-Google-Smtp-Source: AGHT+IGt+vMmZTW4JImKjD6skrMyJc7uNn0QkYuoPTg8Zr+DqT43m75YBhS/W3r7N2xJ2Ngh/GjS7w==
X-Received: by 2002:ac8:588c:0:b0:467:6901:758b with SMTP id d75a77b69052e-46a4a8bae5emr165226181cf.2.1734887072909;
        Sun, 22 Dec 2024 09:04:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:578b:0:b0:467:5016:57f9 with SMTP id d75a77b69052e-46a3b059662ls79821201cf.0.-pod-prod-04-us;
 Sun, 22 Dec 2024 09:04:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUNUZ15Bc9KxNBL9zVdoO0PEohRU8vNABUvBq24q2eHaZAJ9VhFlCTXVUv/3vmw3kUyYOvPY6BmlFPu9g==@gapps.redhat.com
X-Received: by 2002:ac8:5716:0:b0:467:6133:3372 with SMTP id d75a77b69052e-46a4a8f402emr169456611cf.25.1734887071667;
        Sun, 22 Dec 2024 09:04:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734887071; cv=none;
        d=google.com; s=arc-20240605;
        b=V8U+59oBWcJQHRWsrfrh6/bk4wXNdfpqSm1i10L3ICD6O9wNVkxvyij2b/ElpWbNdj
         Z8KAzbxyAkW0kYaiYT8dSA+HtFNpZkfnH6IiyXZ+If3/+DhUY3QYigEr6ambxJCBMhq7
         6XDcJi7GfaITqeLb9qbAYKoRZUhAoRlMdfHzY3XEglrCawBwvehq7QZxcGw/s8BVKbsT
         nhyOldlt4jz/92nVOVGrPfVAfQCOyTvK8jLrkHEwq4A4Xj5KRERSBidvFvH/9GrjuQZf
         xE4iZQV3vNICx/KA4T4truVZ3jp1YvQUvpdfB1tfp1I0p9U1vt+xsQeSVYE4Vpscr2VI
         EgYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=biJ9cIUs7VdG25cLQmP1gdeUZiFa9MFMRJL+U01/kzs=;
        fh=5dOKtgj8ot3LQPhHS73SXw2MsG8VLxwYTrXGAcSPFjc=;
        b=gzWxkeBTzMqi1eoktOvdqBunCROIu5rcDa+Ix70fioBkFChFdj6IMg+3SPfBGZ3esh
         uvm+5Za/GfoX2+pQrUxYRdtaxuM3cA2NWbWxIhaYffA1nWj4ZM+CnWCRaAdkv59zVI+v
         QmOJvM1cjx/uBKkMNnG9B1VmD628t26NugCDOKS/COCnCWZYo2clJ0xnGqo+nQHoh6D5
         IowH9L3+4ExTr8mqZsyh9b8F1tPsEnfYVGkU9WE8ZwlnZyEV8yfoRlUDMFmFXzxvfvZC
         r4bmdzMpC7kPmkBPzbBEGblvpTUvvVPz9zEhZULjJOY21v894no+zgTjF/WX/YfbsRsz
         dLuw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebbe6f9si97004391cf.439.2024.12.22.09.04.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:04:31 -0800 (PST)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-626-3aZuRLwRNr2BwtoLx3LMaQ-1; Sun,
 22 Dec 2024 12:04:29 -0500
X-MC-Unique: 3aZuRLwRNr2BwtoLx3LMaQ-1
X-Mimecast-MFC-AGG-ID: 3aZuRLwRNr2BwtoLx3LMaQ
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 02E0519560B8
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 17:04:29 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F33021956053; Sun, 22 Dec 2024 17:04:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F0D8E1956052
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 17:04:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 691EA19560AE
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 17:04:28 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-xE7wY0oeO9-z1oKdbN3JfA-1; Sun, 22 Dec 2024 12:04:24 -0500
X-MC-Unique: xE7wY0oeO9-z1oKdbN3JfA-1
X-Mimecast-MFC-AGG-ID: xE7wY0oeO9-z1oKdbN3JfA
Received: from [192.168.1.20] (178-75-165-74.bb.dnainternet.fi [178.75.165.74])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id A26B53F8D8;
	Sun, 22 Dec 2024 19:04:21 +0200 (EET)
Message-ID: <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi>
Date: Sun, 22 Dec 2024 19:02:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: youtube issues
To: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
References: <Z2hB3hnS-T8uW2DC@panix.com>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
Autocrypt: addr=elias.stahlberg@harrastenurkka.fi; keydata=
 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
In-Reply-To: <Z2hB3hnS-T8uW2DC@panix.com>
X-Mimecast-MFC-PROC-ID: M1MMAuU8HABH11MkgnIlcpx3JK5Olj7Cj5lReIXnVbg_1734887062
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -SJwd0Ag4rDRhIwEy5az_W-eifRo0-BdMMMbq1POPaw_1734887069
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
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

I also recommend freetube, a little heavier than pipewiewer

https://freetubeapp.io/

On 12/22/24 18:44, Jude DaShiell wrote:
> for those using debian or ubuntu if you want pipe-viewer this is a bit more complex but does work if you run the following 4 commands:
>
> bash -ci "$(wget -qO - 'https://shlink.makedeb.org/install')"
> git clone 'https://mpr.makedeb.org/pipe-viewer'
> cd pipe-viewer
> makedeb -si
> That installs the makedeb repository and makes and installs pipe-viewer for you.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

