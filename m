Return-Path: <blinux-list+bncBDYIZZNASAHRBB6BSOZQMGQEHZXDGFA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 855089013EB
	for <lists+blinux-list@lfdr.de>; Sun,  9 Jun 2024 00:51:53 +0200 (CEST)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3d2104ae559sf2565952b6e.1
        for <lists+blinux-list@lfdr.de>; Sat, 08 Jun 2024 15:51:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717887112; cv=pass;
        d=google.com; s=arc-20160816;
        b=UfWCkxuJw9NsJCvt51Jd3Rwfl0FxzGPwWR6TBH3pNpbFXvlP1D3fDdCenTbTiVBLy1
         5UGjvofCiMdQIkjO4tqV6tbciPy/X4rJu3oQm34xTH+e+p+k0ushMRzmbgjPrXR0nHnI
         v7X3l8YyNM7iVUx8TOZiHQn3NPo/3/Wxucn6lPgjlwgrAr4eIJRzVqUOmUPyZ+JPwncy
         EjXX4jI37HiPf2MTAZGBbAxipVH+/8O2g4YIQDX2ip/ox3Lou5OBiUggucHjU8jED0D8
         7+c893kz/EJP2ZqkGVhOosDDlmyhkzkS2YxS0cC/tiCQWMEx4bs+K8vN0HyIi3KJpEYS
         ANGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=cebnnUCGCQ1j617GgmvZoSzy0UcQR34gUdn7OJpAXWo=;
        fh=Ep0ybn/rjDYA28Ekimi+kUTwIng7KSembU8zDvlRfGg=;
        b=FS6GoatX94g+UD+kvOZetCVwUFQ3nzxjKk48XR4NnyehdWUU4yy/yywJsCeWPp44E9
         80Ew8UW7+5AjG/ODuBGNyItUSKfv0MtyTmNyX1HNb8RUta7BY3r4Ajh2Y5AD5JwOzEBU
         q9kR+ExmHHSsSI60Ol/N6qdhDYEm3WN4+OkyNOGidepj6LUX1p1mkG6N5S+5IhUaMQyX
         JnprVEqIuAkFgLeGdMGC7538RI9ckvS1ZEWjArPZKvcTvEXgxI8YtQsD9ise6t5YI4oX
         qMxo7Wc8PPkXwdZRO0yzlgQC4/6DFEDbn56PchvkZ6SiZWydCkOK/fIatBm3AeDBu2gp
         Vjfw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.41 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717887112; x=1718491912;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cebnnUCGCQ1j617GgmvZoSzy0UcQR34gUdn7OJpAXWo=;
        b=gha0YP0WtvCEBuk8AffJb6jQjHLiRc1bao50Il4hPOODE9ipYEZSwWinSzfSGdwjY4
         HBZr0P3AFUDLE5w3Tshr8hwioOIhuB39CWKfujSxDhRWt7MTQ/SW8leZoBRxbWwp5hZN
         pogyTIp/VG15xZ7eivJGBCAS7B9nYM3Ozh4Ulk8bNc49//cc85RvcCfmCj1INKubF8Xq
         jHtiq5cZ2qNcUmLy2h8YQHayKLywmjDKWjOCy5PMNZLd7hlhaAffDkI1UbbG+KQXebRt
         mpRaiELDT0S2SAuFBjJs9Obu9iDk9BszmHNYB7XZWnhBnfszHz+2IqCaRl1nCtMAhUoL
         p44w==
X-Forwarded-Encrypted: i=2; AJvYcCWe//jShRjzZ8gjiL36UBOJ8cPDX681jkgsOHVb78tGKoEGWNXCLWA50ZjfoawxNUP96Uzdm0c97mD5VGJ5mNxMfJtBlsoANnkg
X-Gm-Message-State: AOJu0YwfMUafpE6+WN5lhusRzcW444vj7G/NaJVkTTD5SETo1l0EbkaW
	jAKl7DjOa3Mgqp7C6J359WKwg4Gs8fwH7q55L6rkvaEJhkgA/zVd0o/zHy9uevg=
X-Google-Smtp-Source: AGHT+IHocltxEaz87u6Kr7lJgLBQ3SqHBS3ckEXCFvK5tBdnsbbMbncFFbYehwm2uIjRH0Gz3ZbKnA==
X-Received: by 2002:a05:6808:1789:b0:3d2:71f:109 with SMTP id 5614622812f47-3d210f2cfadmr6779343b6e.55.1717887111902;
        Sat, 08 Jun 2024 15:51:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1791:b0:440:3c63:76a8 with SMTP id
 d75a77b69052e-44040670d87ls28719411cf.0.-pod-prod-01-us; Sat, 08 Jun 2024
 15:51:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUdvV7teaglAFoj/h5TZ3WfF+iaC6CEAM5pIpncKmz5lE9yxFJVV13owDxF402AG4Pdwlna/GSMjDEMjt3ymO8cAF9697d6Kb0Yy3De
X-Received: by 2002:a05:622a:56:b0:43e:a91:e8d with SMTP id d75a77b69052e-44041cc2ef8mr67901611cf.54.1717887110575;
        Sat, 08 Jun 2024 15:51:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717887110; cv=none;
        d=google.com; s=arc-20160816;
        b=gkTgDneHoED2Ck3tT8dyebt/NMKhXqPvV+JAAdIKwACYUxnkPHU3zDgzb9wNrGwCYe
         KMjJ944qH0d+HN4EnOgSlJ5cr8Uqkngx4Vo+4cmloWic3vkFnlKchQSEKPbqn+wva68U
         FJ4iUwaW7AsstP3dgQF2CP/SsnSWfKGu+MncVkukRoKaGNmI2/2Hieepz2DHvV4ECTkl
         hMcSIn3ZJR/k8GgL96tGiBEnGSAi/R5y6HAkk4WdBIevplUmr2ZkC8AKyhFlqXSYvtuB
         /rm5z1YzOttHnZu5Ntepub2bAOQWX1eHedfy7noKU+Xg/VoBYMAo60ZEiX/OjtLd4G8M
         N9YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=aL0P6u+fS+LX6edGNiSWlFV0/qSBU8cMLccMzzeh1g8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Dn7Xyw10arvX1fIU3eA0L0E1p1TX7o8dRWe0whdaOEO44MEhJFEPQzGXmdhTMMkouM
         08wOvJCrZ2G5X8S/a5lxdTJQNQz8n5YyEzWz57QNi5YEc+Y0LaZefzbv7fZLfchTHC6z
         9mCUa0R9zNJxYM38gbt2OnrlKJBB46tKsXY4vA5oW9NZWR4RXN1o/uQxUziipMPXkg20
         mxPhNWtZi1oPEi+GFBa6JYpJXtfOybjy8w+5WlCRW2vS+r8MBbWB8lB1+XRDXRkePakb
         an/H239Yt9Nt54ipOB56OslDZfCFl4VfQC2KN9T4hBpdaWi9JsQFrs3PkpS1SaLZy8sF
         StnA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.41 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44038b7989csi31697191cf.704.2024.06.08.15.51.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jun 2024 15:51:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.161.41 as permitted sender) client-ip=209.85.161.41;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-295-GY4jj-R4OuamYACTSsvmLA-1; Sat,
 08 Jun 2024 18:51:49 -0400
X-MC-Unique: GY4jj-R4OuamYACTSsvmLA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5E9721956080
	for <blinux-list@gapps.redhat.com>; Sat,  8 Jun 2024 22:51:48 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4E00C19560AE; Sat,  8 Jun 2024 22:51:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 49DDC19560AB
	for <blinux-list@redhat.com>; Sat,  8 Jun 2024 22:51:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C36FE195608B
	for <blinux-list@redhat.com>; Sat,  8 Jun 2024 22:51:47 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com
 [209.85.161.41]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-611-hk3dX7o2MYi6zUkqoQIJ-Q-1; Sat, 08 Jun 2024 18:51:45 -0400
X-MC-Unique: hk3dX7o2MYi6zUkqoQIJ-Q-1
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5b97a071c92so1688729eaf.1
        for <blinux-list@redhat.com>; Sat, 08 Jun 2024 15:51:44 -0700 (PDT)
X-Received: by 2002:a05:6870:a9a9:b0:250:171d:5c74 with SMTP id 586e51a60fabf-2546457fbf9mr7307916fac.26.1717887103764;
        Sat, 08 Jun 2024 15:51:43 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25447d755e9sm1575366fac.5.2024.06.08.15.51.43
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jun 2024 15:51:43 -0700 (PDT)
Message-ID: <11399c08-e4e3-4525-bfe8-c8eda82ec95f@gmail.com>
Date: Sat, 8 Jun 2024 17:51:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Trisquel
To: blinux-list@redhat.com
References: <2aafa8d0-f421-42da-9178-fcfbbf5a5a1a@harrastenurkka.fi>
 <20240503123117.6vhsfjpfuhjgwxno@begin>
 <126a3a3c-2f91-411b-b72f-74cd586cf7bf@harrastenurkka.fi>
 <20240503125138.ccmtstpyuyyyyf3e@begin>
 <4703c033-5eee-4d95-b6c2-c1e9a9ddf089@harrastenurkka.fi>
 <20240503130413.rxcx55qhjx64utco@begin>
 <11a8b732-c9a8-476f-94d8-34a1f8fe2bb7@harrastenurkka.fi>
 <7792665a-af52-4379-bf77-2adb056fbe7b@protonmail.com>
 <324ee61c-2792-435c-b05a-30ae5cf0784a@gmail.com>
 <b29d005f-b199-17f6-66c2-cc7635c663ee@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <b29d005f-b199-17f6-66c2-cc7635c663ee@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.161.41 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

i will give it another try, before i installed the drive into the=20
computer i used windows to delete all partitions.

so even though i deleted the partitions it canstill see disk label?

what is the best way to make sure everything is wiped clean before=20
attempting another installation?

I do have other computers running linux, I have fedora and linux mint.

any=C2=A0 info would be appreciated.

Rodney


On 6/8/2024 17:34, Jude DaShiell wrote:
> Beyond the partitions there's the disk label.  You might try erasing the
> disk label and try the install again.  If the installer found a disk labe=
l
> it didn't like that could stop an grub installation.
>
>
> --
>   Jude <jdashiel at panix dot com>
>   "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo.
>   Please use in that order."
>   Ed Howdershelt 1940.
>
> On Sat, 8 Jun 2024, rodney jackson wrote:
>
>> I have just installed Trisquel 11 on a duo desktop.
>>
>> and the installation was going well until the end.
>>
>> it gave me a fatal error and it said it could not install grub boot load=
er.
>>
>> so even though it is installed it will not boot up.
>>
>> the partitions were deleted before i did the installation.
>>
>> so how can i fix this i tried this twice.
>>
>> any help would be appreciated.
>>
>> i installed Trisquel a while back on a dell laptop which is a duo proces=
sor as
>> well and it works perfectly.
>>
>> so i am not sure why i am having issues on this desktop.
>>
>> Rodney

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

