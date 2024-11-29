Return-Path: <blinux-list+bncBCLPHQH4XEIRBB5HVC5AMGQEVHPU5YA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id E34289DEC4D
	for <lists+blinux-list@lfdr.de>; Fri, 29 Nov 2024 20:18:33 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d366683f4asf29128206d6.3
        for <lists+blinux-list@lfdr.de>; Fri, 29 Nov 2024 11:18:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732907912; cv=pass;
        d=google.com; s=arc-20240605;
        b=bMXM51TgPakcaToJbepSNBYjcATilF6dZg4hTk4YjxqpKS7iRnfA5enAjzQAgkqY3P
         CPaJCdyhwxgvoGKaruqCNQugSetcJj6gmFEH7g4z+G/IkSNHipcZUMGytrpI1VRKoyxI
         7BD/4g+xKgg43btPgBvr/gBGMT33NfShjDpIRgq4Vxj/Q0rzNMJMFLTEu/nR0toU6YC2
         J4oVvaFpLBA5b1bXas9L3qKw2j0lxhE2HRKU3dl7bGRXQvsIC/ollzV+rqWnb3bgjrnT
         RDHHuYpzCEqzpR6lYz7kT2Qihtvnns5v/ml6AOYRtLkE/kf9sJfMLDPu/FtSzapy4Ihz
         S2Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:references:to:subject:from
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=Tc9B65jIMPps4GA4zSxVvZWc6g3SzZ6lw7Ehaq6kaBc=;
        fh=mme5afOVHp1CPIz3fw7gv6RZvWwUaMkaBe5ldlfqmdY=;
        b=A6mfdH3CsI+GESFlZxepPE5iBr5abCpF8P0tMtXNziW+xr/qQnFWy8gNbnr1wuAEoU
         sXQRlMlAlPEovkTpJk53Jj2wTMgFPtgZMv4bpIk7hilohkVrDEJLk3QLQWMivG9u77PK
         MIqRNAJpvmcBYVo9vPn+6fLpKEgZpDt665A87BXSYUZYIKzbvvOGuzSmWk90SdChCPmg
         Mozl8ORswIY+4Rmwo0vX1Mgsx/FuqLzjMjPugO9hAEH+DYmTZyFOEPLB8fPH6F2FC3Gk
         xkmVKXMN907KZil9Vy/fWSeKPqNbZBdNGn/dsERKRAR7ILsj4hprmg7nANe15OmhetWI
         Rr1A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732907912; x=1733512712;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:to:subject:from:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tc9B65jIMPps4GA4zSxVvZWc6g3SzZ6lw7Ehaq6kaBc=;
        b=Zzew3wbh66AdNYYVkxGqvUoyW4qxOjJM4IchDb9RUc888hH7ni28MtdDFxlll9QYqn
         Px9ezC0f/gyaM/1Zec10nLmvZoMJXY4gD7ktBBIpxF8PESAIB2pLqi0p1kP/3ALYzTYN
         y2llUB7f4hiUbmaXtJPA99w/OW0rWUhF1u1Ectr6+Iw971OvU0XUm1CqKczRLtyugPyR
         G+d1C+7FzPK0j3mcHQx5jgwPohqgQjw82Em3V7Zj4IosplgH/uFGdOd132+pdSOC6u4+
         6cCnVLdHqgUN/O+S14r7vX30Urk0xBmfDv7swy4yNIBV0MSLHFTUEwu8TiF0XULAqJ8b
         c/jA==
X-Forwarded-Encrypted: i=2; AJvYcCV7t/smPIUSFcCqxxx/4FjIjQHesNgoJ40HQh2Hc/+DAl8qYVENtnf6XFaeEGF3g+5dn+qAtQ==@lfdr.de
X-Gm-Message-State: AOJu0Yw0ufqP4N4pNlREQOb2iXmBrU8px1ILpogJzbGB3U6MTnvO4dOl
	YatdIq4xpppzPeE5MytZ7giHEQCNljNatoVyB4m3fHi98mdapoFRrOz2c4+WctY=
X-Google-Smtp-Source: AGHT+IHL5b4ZUHXU0XeD9QmWeH+wJYo3p2LNMUrFjRyGMymJR/zrZhshzkUJnq9I0BYfxiNGRk0eyA==
X-Received: by 2002:a05:6214:224f:b0:6d4:19a0:202 with SMTP id 6a1803df08f44-6d864ddd4a8mr178747546d6.33.1732907912007;
        Fri, 29 Nov 2024 11:18:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2481:b0:6c5:127c:2ebc with SMTP id
 6a1803df08f44-6d87284c36als20125796d6.2.-pod-prod-05-us; Fri, 29 Nov 2024
 11:18:30 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWXAqJwYdQZPZ0yICKfrbjaZftwlRlxb8GiWQJPob60Wwbemkuq8rH0L5ru5+5HTvNU5WYMJaqRMZQx7A==@gapps.redhat.com
X-Received: by 2002:a05:6214:dac:b0:6d8:8fbf:d1b7 with SMTP id 6a1803df08f44-6d88fbfd316mr3768596d6.43.1732907910697;
        Fri, 29 Nov 2024 11:18:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732907910; cv=none;
        d=google.com; s=arc-20240605;
        b=eHq3aM6kE7KLyBUFR6Obo2G0NgbD0x/LUrCBy7RsT+JwJWNz5k2gCmm6gXgCoD/yA5
         rsEBplfN/DwbZco97pFNCqJ3E56TBAGeh2QBsXnKi2alvf4KXrd4q9xclpiovE6jozgz
         0sUMOPDdtHmM0JOBAkRjxjab9wXzuAa/8ZeYMGVVPsjjZ06dMUaRvgl7hQbZBxiv7l9M
         JfEWxeaj66U+RRys8GzQrWZ6DtMwTSIfjchX8JzSYayYfQKhBlt7V0wDT+5HG4ZJk7HP
         TB1ZDG3wDbpHUPaR+Y+iKEvRgHtz9z6iNL5MwS8sJmDYdqgdET9GNRiGO9e3Q8DnIXMM
         Hx4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:to:subject:from:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=N54YajULVGMPS2rP07FeF3NYo2XQBwEtmuaOMQAE2lo=;
        fh=rZWX/UZtfyKNpmCSiMHCxR+LorwR1klq/op5HbDsSkk=;
        b=gFvGcQ1z2tOK5zFfn9tWOk+9ROt9iS2Ep6mSPEIAvd5JjKZKoTvpuNPoVl080b5ey8
         Xu2IMwmo4+w66yeFobf/n3K7BjCpdRq92Cg5UzCoj+lXlaghmuL2ebYwyAfgps9gZ4VX
         sFh7Hkaq77+EMppZqkqm5r1PjbIU/nuK6p/kksKEvoi9KlySoVL4XPABOzCoZSgzXSmX
         BxZ8P51LykB/Ca2rhQHGj6e1NjlCpE5CdhJPKuPkT2l7Bv8en8OuFh1iHFRf3fn/z1ZD
         grsv77Xmu+4dUvxXbbCF/O8CUXqrUGYWBw9Te6tKFL4a5rgCwGA1G3vA/sC6G2QeW+N3
         Oogw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d8751abf50si56342436d6.43.2024.11.29.11.18.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Nov 2024 11:18:30 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-43-we2UOwYgOMW6VDEmCT1PCQ-1; Fri,
 29 Nov 2024 14:18:28 -0500
X-MC-Unique: we2UOwYgOMW6VDEmCT1PCQ-1
X-Mimecast-MFC-AGG-ID: we2UOwYgOMW6VDEmCT1PCQ
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 604221955EA9
	for <blinux-list@gapps.redhat.com>; Fri, 29 Nov 2024 19:18:25 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5A62330001A5; Fri, 29 Nov 2024 19:18:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 57D7A300018D
	for <blinux-list@redhat.com>; Fri, 29 Nov 2024 19:18:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB6581956088
	for <blinux-list@redhat.com>; Fri, 29 Nov 2024 19:18:24 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-499-6uuA6-ZVMfea-KT5ZXye3w-1; Fri,
 29 Nov 2024 14:18:22 -0500
X-MC-Unique: 6uuA6-ZVMfea-KT5ZXye3w-1
X-Mimecast-MFC-AGG-ID: 6uuA6-ZVMfea-KT5ZXye3w
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id C9FEC32082;
	Fri, 29 Nov 2024 19:18:21 +0000 (UTC)
Message-ID: <149359bb-327a-4e7a-9342-37aeac436ffd@jasonjgw.net>
Date: Fri, 29 Nov 2024 14:18:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: unable to get external drive to be seen after doing an ubuntu
 install.
To: Matthew Dyer` <ilovecountrymusic483@gmail.com>,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <9d92e5fc-a61d-4e48-a758-d9ea7ab5839e@gmail.com>
 <f981c2ee-d0ba-4b5e-9d33-d82ad1266c5a@jasonjgw.net>
 <db334430-7cda-4443-9fdf-ed4b68498ea9@gmail.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <db334430-7cda-4443-9fdf-ed4b68498ea9@gmail.com>
X-Mimecast-MFC-PROC-ID: r6XkyALxYpjNllhjKLCy6vCp40Zp9Uw2MPd-i302wOs_1732907902
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: GjGomi73bFnbBPtwMHEC1iqRzd2XWsNA2FMVzC69ofU_1732907905
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 29/11/24 13:15, Matthew Dyer` wrote:
> Hi,=C2=A0 I have a log but it is so large that trying to view it might ta=
ke=20
> a while.
>
>
> Does this list except attachments?=C2=A0 Thanks.

I received your message, but it didn't appear to come via the list, so=20
perhaps the list didn't accept the attachment.

I've added the list back into my reply.

There should be only a handful of relevant lines in the log. You should=20
only send us the relevant lines (generated when you connect the external=20
drive), not everything else. Insert them into the body of your e-mail.

For example, about four or five lines should suffice to tell the story.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

