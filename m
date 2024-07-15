Return-Path: <blinux-list+bncBCV3N6GOXMCRBDGT2W2AMGQEHPW34WI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D14B931A3F
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:25:18 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b7483e3dd9sf92184166d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:25:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721067917; cv=pass;
        d=google.com; s=arc-20160816;
        b=uFMvnH9TB8GUS7VWmt7zWmvRQdXU3GU6ng0Sof4b9usEH9v5PgbYjWOP5KY1csIrP2
         CIs2SPZjg8Lq6ihviRwZKCaI27Rm++QdaAtYOh8H8C8n9rx9PEajSqNGclhLFqtgk1iX
         OxTVitB4d2rvVMKgRiwM99jG1JOfYvviUdR0CwgZgGfCBcM/TuvkmZWGiUt2kku7YuG3
         4dJIrtF8fbl0paqE5JLxt1W/BP/R5kiya3C4fdhECecVa429dqOgKo01oqRpPG/IPgtB
         HM/jns4HCMoJ2sGU4WP7dUo19WYLuOfYFVHN3GYLB3Ofk6CEUw62tPLgcTNrfMo3r1bC
         4+KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Lvh54CGGUX+/VMuC28aj9rvY2Xv0z9oQoraNJW9RwSo=;
        fh=9T1vVfKq1FOZkzd4GlFG7j3EgQCLlCiXxJK39s449jw=;
        b=RFUTnBjdn0e8Qs63nqxjqgwFsLBhzDqbK7KCmfjz6bJTN69tB8xEgUIrhnQTrSunvr
         oaxwW1r55ebbjm5JzqG/jFBR3ewD+rk8LCTgvIgjQwTgOwiUWulpiHTrInTYml8nxDdT
         +VIcNNlU55+TCeoVszh0yKFz72EirS4Em1tvSMRsNUvBtRj6vu5RPjJLQTLaeZzwInfY
         fTuHk0Q4C6j/SG8WWny85ZB9GHB1fvWW9zyIkO+wlLbinzzlNc1e0hUvrF5+mChDJX84
         7lhIN8JOkeJSVrKSdKPJcODO9r64jzcUMqwwLMQN1L36hhg8wWm7iUV3TeR39bFbyIJF
         XfLA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721067917; x=1721672717;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lvh54CGGUX+/VMuC28aj9rvY2Xv0z9oQoraNJW9RwSo=;
        b=BhCOSqxy1KCYGIgif3kwk8RvoUjHa5YvYISUsqA6OrCAT9u2jwnNlJRdnYXhYR8dm2
         GCJpIq/YCZg8Mk+gyJ75hGUM69JIIJMNmifqwTR7FzNeRFMsQOLwa2rrtltAFzAtQPeI
         EG7740PFn5a0u20INJjmKcdU/CaYiIg+p2A7x6CcJnC5UlsNjuXnODPWXJYHbjMikr7q
         hn44z7fqCKn9mLWnxWEecxiOo6ZVfx+QfTW01IbzobVT8Ne7d30e86jmtt7wId/IXMx2
         r9YuXnIQMTWC4RuXlBOQ1ZBAsQjO/HH3xBKnKODVNOwWigriEnp1pUtuSgDCaHnkMhq6
         Lq7A==
X-Forwarded-Encrypted: i=2; AJvYcCVwnBwLafoQ7uH1xaMbyeNB8KUPb/yqn5l83evbeHeCn0L03K4vyVX26XabG7lcCpHNC1HNAomOzS6pF+Dc8Yx3seE9DI9C+Hjw
X-Gm-Message-State: AOJu0Yw3C9bJ9AqvmySFOAnVJuKAfI1EZ9qMZmCVRzl3SeY6/ljx0WuN
	24lxTNAqAzgAjpd7H51YFd42XG4hR8l8diQWrG3aqgPfw4haQL9PD8hFDEaitjQ=
X-Google-Smtp-Source: AGHT+IHI+9ZpH5fNZ3Sbfok+/3lTdy4lV2SCvzIN81afCMaywe3kffLQtjZDh/034PlnjpdJvYMI2A==
X-Received: by 2002:a05:6214:2aab:b0:6af:33ed:87de with SMTP id 6a1803df08f44-6b77d91024cmr11528486d6.20.1721067917026;
        Mon, 15 Jul 2024 11:25:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2a4d:b0:6b2:a43b:dc38 with SMTP id
 6a1803df08f44-6b74b3253a9ls144922816d6.0.-pod-prod-00-us; Mon, 15 Jul 2024
 11:25:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVJxeRiMWHNwxz0mG3QLdVR28ydAGehC7hTiUmjB6Z8rwsZ1fKts4r7Up54mzWvg+kEvEHpvgcvEf987inFQx+ul69u/uYnWMrPW++G
X-Received: by 2002:a05:620a:2996:b0:79b:ee4e:8362 with SMTP id af79cd13be357-7a152f2a92amr2437609685a.0.1721067916233;
        Mon, 15 Jul 2024 11:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721067916; cv=none;
        d=google.com; s=arc-20160816;
        b=fa5B+292jUkPQdm5aKJNqnEj4+qiNuz/+5TIv9ul+tMVmJkrb3DMLr+mJJGeSFyHkE
         4cXVyhmMLDNHZPz18lPonf2kUaa6WFOZNeZy80wmJtNkNi4udMKTebLYI3ZtuVHML1Kh
         sgjWZa/6r0Bw168o+jmGQ81/XdaEe6kUSYMmS8dvz77SSTjdvXww2ENmLc54aWFUxBHm
         AS+rOo37Apbl9C6mmWMbab+z33FEoyiChMNdgEVLv8/cDxqO1VjrEQxW+y9SvW0zwvaR
         rYBMoaxqsUr8DRQ4P+OphHs5tXTBIFLKkd/NoaRH1PFc+/Pp09B2uyAaZxM6bcDdZQGI
         KNeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Z3/eeH3Dqp7fHVLzbe2YkLfHpoGOFwnV//nSM/xYnEo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=gIkZsZHkCs5m2u5jWGBvLRqyeGmm2q5RGOx4XW/69VWGj8uWE9oBlA2lIwQtnEuwcF
         OH8IxjoCoIL4zungW7dGSDcxHMLlA6H6hpsfd2JPOtzzOgS7xeWXKKL8p+sZBgNL+dP+
         iGHi5+ZqGAJkPsvwO75RI+dKB9ySxkYzYaY2SbBrqMAQFM2MMloHyKamkCZP8KgA1tR/
         QPWkfZmV/4kyVtjmOO1aZ5e7JQUlTL8S9cRpwgZvV95IldxhQYY/d20sDZWrL6TBvWAg
         AZ3a7bt7iIgrJhdYuaRNi9P2dMc/OqeL/i8P2IsTdHOqXqRCYYudYImj7TYwUrGT26BE
         turw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c918cdsi549589585a.719.2024.07.15.11.25.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-265-FHt5_vnGOXSTdEL9JuFORA-1; Mon,
 15 Jul 2024 14:25:14 -0400
X-MC-Unique: FHt5_vnGOXSTdEL9JuFORA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 98AAC1955F56
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:25:13 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8A7D93000190; Mon, 15 Jul 2024 18:25:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 87927300018E
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:25:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 04CC81955D4F
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:25:13 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-637-OLPRVipqMumHS_kPROIs1g-1; Mon,
 15 Jul 2024 14:25:09 -0400
X-MC-Unique: OLPRVipqMumHS_kPROIs1g-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1McH5Q-1rvSXv32ZY-00l10l for
 <blinux-list@redhat.com>; Mon, 15 Jul 2024 20:25:08 +0200
Message-ID: <3dc4abd1-891a-4908-85ab-4662c4ea26b2@gmx.it>
Date: Mon, 15 Jul 2024 14:25:06 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: how many Linux machines do you run?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net>
 <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net>
X-Provags-ID: V03:K1:C6t4p14oA5nroe6zsvKnLaQwPVtni6OSzOMrBYZhBA6VhIPebE1
 k0r78NdnuMqKpMQLSiRG4NUi77wj3mLpfQGSxMx9W1mtVsp7+FuTvpGA25AVbzhcHMWyLWq
 GEcRQYm62EIe4PgZ/5ynCTRvPtZZ5b9nBaAIXSUYw8WRv9M5+9+pRUCTiwxSQIu9qtqePHX
 xZJiTnDyb/MLFa4axwSVw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:iGDycWv/Oc0=;wN3+eYPmEdwAi7+rkHFMEpam047
 r9BIukHWzjFJQOQa6JzwDnCJRV5WLiVcZXO2DOsbXrgCGVrAS+0xWZf9NQyHDLFxpKZILR6yT
 S9+PLvyiUKkPRj1DS4gi1Mlk0pxpjmyxBfMnTprvtDf2gSi08gH24PyQtVBtOsOW9FOkcijMX
 SSKE9EAz+CIPGeIgBX8L12VVei69BLQ1KVe/y3tBCjotZSu2snDurhMF7dUjCV/ylLIAlpoWj
 IzmIRELJ+aUh77cvhb5hPJhbxosTt1Cos9Tqrjw8dBzIsKIVAI4qrfC6ayWYZdg6Aq+y1Tlud
 BIUYV4DTSyCz+VE4h4LfgH2aS5vBa6UzINE9bbCMTYMjOdYvo5MFV9/XqrqBxHYrbOHSxwNJ4
 OvTz7seuWDAn3xWxPLXzmknOMpHJE72QVcFj9Av7XbcaeJDtLLg9GRWh1OHGX2rQwx0dMknna
 V6ifkUWxP96JYqtdsd2i3gdk9CFOTsDT+7kIiUz/3azFUx9Edvn3zIoVdFL9d04enwh1riDaU
 8Km5qR15NElmZORent0kKPECAztS9ZQnMU4SSWD8l3dOsjGzKZPp4PPjNqb/uWQ63eApKr9Fu
 YtQBW0Y/f9/m7tGO6VJLHuxcjsv2Jqtr4iFFYp7811HhRfbtUvgh/lgTvQK0Vj62rCP/QotXT
 Lz/d8vnkEtFMvBUbPeoypiFltt/UAo+UNzuSAZJk2CNrVlRB7L13yI/hPRehN5adw99a2c9UC
 xvSBlA7z4+brQIVrgdwvIV85S4PokuoNF27mdYAC6lA3JdIYKpD2wE+ZHflVbA4hCoTmSIQ3j
 JOEOi6QMZGS9RO+rB7IOV99Q==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

Karen Lewellen aligugumia:
> I have 54 gig of data in my main shellworld account alone, 6 gig for
> my personal website..cannot imagine another shared hosting service
> giving me that kind of room, but might be wrong.


Well, it's Oracle, but it's free. They will give you 4 ARM CPU's running
one of several flavors of Linux they offer, 24GB of RAM and 200GB disk
space. The catch is that you have to use it, and they want you to use it
a lot to keep it from being idle. I would in this case recommend running
xmrig or something like that on the server to give you a little money
and keep it from idling all at the same time. The best thing is that
this is a server that *you* control. It's not a shared host in that it's
not one of those things where you upload your files to it and such and
have very little access to anything on it, and it's not one of those
public shell accounts either. This is just like have ssh to your own
computer wherever you want it, complete with networking and the like.
The only thing they don't do though is email. They want you to use their
relay service for that. Try as I might, I never could unblock the mail
ports.

~Kyle

Imetumwa kutoka maji

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

