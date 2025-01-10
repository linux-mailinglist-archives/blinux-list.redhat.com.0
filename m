Return-Path: <blinux-list+bncBCMKFVG4RQEBBQVRQ26AMGQE7KT4IIY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 043FEA09D8C
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 23:01:41 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8b3173b5bsf40732396d6.3
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 14:01:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736546500; cv=pass;
        d=google.com; s=arc-20240605;
        b=NgQ77FfNCC/9rco2ny8XqBP5HSp+VWgnB03CK8GIG7sIs6xsLfNHePHwgM1jbYiUcq
         +R/cCTx0bfsjQanS1ZmOLEQNMMYCpbwlTYfX62XJTp8Kpp669uLAOosufH8gWsmsUDiT
         VI3nBsEvIVg1EOoEzLSwfL/RYlrvUoWi7qi6qBDsO27ArTmT4COr19g86zGfQQbtby0d
         3bWfSIzSgtKVdHK8p6Hc7SK5D5lJ/03GgAdfw/0PGbbeufq9YaTg7uHwLtXZns0iMsMJ
         6WW6OOY2nTh2FSnWxaIIBWlA3phCD+7A/7BAdyzeBl0DgzdMHbNpiZ6HzK0NaarerXgW
         qksQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=9FPN0AZD+gUt+YDlkNG3+zd9dJdsFA8NYA/3kW2YivU=;
        fh=M6ovPKDNNtWte4Y9Bcbicv0nwBHYsWY2Dn3YDpmxApc=;
        b=VD/+SUs9ChhXrlZoR+CfudkCi3htYp5l6ApoP0FN8UDd6u5LnwqiYCiKutffeO8acN
         7VU4fLC05HncsY/2U5wPGrNtqq9PbtoJn3t9Xyz5uiQwiv5rbSCUMT1s93sKFFymHNAE
         UJyHr3FhiK1wDqF96JCQD0ZIZ5qBAezQNJ6pVtNJ4TxoL12aF7gPo8Yhoml67FO4eqnJ
         h1XMUzNO4vePdtGKZ6xVlBKRhDXMQupPLVrS1ILXwdZNqvP6tmbC0rXDwMh6/19EetrX
         mVBi3F6ODguAvQZ1Ut6t00hc1SvJNFIdo3Cr6JsyOORoO/ggdm4ds2qXkGykWdyLf+v+
         U4dQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736546500; x=1737151300;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9FPN0AZD+gUt+YDlkNG3+zd9dJdsFA8NYA/3kW2YivU=;
        b=GTTF3bn2FLw4fqt/fuD/EfX7kIDjKwMCX6ySYgUloj2LZvv2ra4EN3XxrN9K2lmmnL
         cIPRHUTP0rH3oHqHXAAaBCzybd4ffXR3XyCpEtla/u870SqeMps67UhZuYStMqW4Ykqo
         QEMeqiP6/ORs55LHnEtQP7cBMUBgAz4Paz78JdpuNZj64uzd7dRDBPSdzSELt8uQMSQR
         nAnihFqZzwrzbaBjt3o9SW6rc4LsJCH9C/z8PQxadKawg9VPQPHte1OtOImI0a/W4E4e
         yFO1tUlayygD6D/Xh768ETTVVFKOwb0pD+KcFcyp4Mjx8O4eu3xZ5nvEL+AaRILZGr9t
         Yf3Q==
X-Forwarded-Encrypted: i=2; AJvYcCX6N1CDT+1HzL2GKllIL+w0OcV0CMpWH5m219DcGjht+hjdexZmQLqGE8phf9F8mgJil57gDQ==@lfdr.de
X-Gm-Message-State: AOJu0YykI3JhJMVLaj62xgMkdTC0wWeRV2PiR8iJbrVgPpUBKc4hDTd1
	QHt/wim5kQLOFNfz+RLG/N8qhlIg/hmvBDEKozd352HWlTCgdnnLzvGOxwAhl+U=
X-Google-Smtp-Source: AGHT+IFLR2AtijeLsLT5/niuUrDfV3HmMh4LzOIZyo34gzoUIkn/Q0w0rw0rxY0jrUP7/vREJxeAMQ==
X-Received: by 2002:ad4:5c88:0:b0:6d8:a8e1:b57b with SMTP id 6a1803df08f44-6df9b2d5b97mr221117286d6.36.1736546499290;
        Fri, 10 Jan 2025 14:01:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5411:b0:6d8:a5f7:f114 with SMTP id
 6a1803df08f44-6dfa36d1b00ls40558846d6.0.-pod-prod-03-us; Fri, 10 Jan 2025
 14:01:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWX/FnsPifYehpNJ6XuffHNLsMvVj3UgLP/cqNFZcS37c+LbgFPktv/fKajMnbuhWsId+26gEI7viJRrw==@gapps.redhat.com
X-Received: by 2002:a05:6122:398c:b0:515:4b68:c37f with SMTP id 71dfb90a1353d-51c6c3a4e0fmr12731247e0c.6.1736546498400;
        Fri, 10 Jan 2025 14:01:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736546498; cv=none;
        d=google.com; s=arc-20240605;
        b=Pln7b0rRHkpQbL8COysdT08d1PKQtaqJAhzA5a7YFKOm0CtNoOxKuG7L9WtPfoBtJQ
         9q1JmDBApHgfpJNujJsaox9WBfnmS+TTCrkIc85GvHBoVsmmZE8d3Wl62lu547DpwwSq
         JELapA4PYkeEPOeYwbFVfC94HOY3vGxz0ZBOuvJwkoavHyO7bswJDTebq4xvoNShFJ4G
         4lcBcVgCPUsqsm5ONc7mkT/MMlfpeLKp0vD2GRV+HrWfvtv+z+Fl7/s2otv4Uz9LQIUo
         miDtv1CYHt+eyX/S1pnPRQnnKpqokMJ3y/bLcSzSm1tCfullH+lBO0AcbBtY6+Qb4BTf
         W5ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=63XGlRLMNHalNqu50Hl4Ng1FInzSIMpQowaalQY3/Uw=;
        fh=tKlCufwTXIeyJwsdnGJLxKm9it6isBTRjrNFX/QsiZk=;
        b=OZOEFE3/psPeu0kYxxiaFLMV0NaZvX7lgzwX/1zXpPrff/dS0uRHQ80MNWsMXFu1jb
         S/OzuWHu+vizn+hRNPSHCDZwKgJK6nkbkecA1a4Vy1ZQgm56jehNtteLeibbHlbnkfNq
         i+6aok6ayFiS43D1U+OTk/5AWv6ESpSUzrsCDEBIQNzRZKDww1Nz0jj3mwK8g4e4XnRH
         VRx8Olz1rulmXWKZbT+ej9AKczOZ8wQCHg+fHXYv+cTuY89vCQY+Ploepg+UJQerw1sJ
         a2ko320OvkfobGr3H5SY8HerYP0UhkkEN6/wteQha72x3VlllkNxwGDc2lK3uQVpy6oj
         TVZQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id a1e0cc1a2514c-8623b220871si1318803241.57.2025.01.10.14.01.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 14:01:38 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-490-tsEKyzrUNzi0pxz_Dg_gxg-1; Fri,
 10 Jan 2025 17:01:35 -0500
X-MC-Unique: tsEKyzrUNzi0pxz_Dg_gxg-1
X-Mimecast-MFC-AGG-ID: tsEKyzrUNzi0pxz_Dg_gxg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E93A71955F69
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 22:01:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E3CA4195E3DE; Fri, 10 Jan 2025 22:01:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E0C98195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 22:01:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 63E6819560A1
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 22:01:34 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-1-EH74kgbDO7WURDHfF732UA-1; Fri, 10
 Jan 2025 17:01:31 -0500
X-MC-Unique: EH74kgbDO7WURDHfF732UA-1
X-Mimecast-MFC-AGG-ID: EH74kgbDO7WURDHfF732UA
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id EB68D65EAC;
	Fri, 10 Jan 2025 22:53:03 +0100 (CET)
Message-ID: <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
Date: Fri, 10 Jan 2025 23:00:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: List problems and a suggestion
To: blinux-list@redhat.com, Alexander Epaneshnikov <aarnaarn2@gmail.com>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
From: "'Didier Spaier' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
X-Mimecast-MFC-PROC-ID: DkMJJoEjtwXi4AvAibcFSJwSM2VCd1GFah0sveUMIg8_1736546490
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IkUk2_r6agd2FP7VaN7ZVfzIBUBMtsNmPf9thZzgYr0_1736546495
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Original-From: Didier Spaier <didier@slint.fr>
Reply-To: Didier Spaier <didier@slint.fr>
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

It's me who suggested to create another list to replace this one:

Let me quote my post about that:

On 06/12/2024 22:36, 'Didier Spaier' via blinux-list@redhat.com wrote:
> Thanks Chime,
>
> unfortunately this information is rather old, thus many of the links it provides
> are dead.
>
> Unfortunately the blinux list is only partially usable and provides not recent
> archives. Fortunately the is one here instead:
> https://www.spinics.net/lists/blinux/
>
> I think it's about time to cease to use the blinux list that seem to be
> under-managed if not no more managed and replace it by one that could be hosted
> @ freelists.org as is the orca mailing list, which is free with good records.
>
> @All, what do you think?
>
> Is there a volunteer to register then maintain a list like blinux@freelists.org
> replacing blinux-list@redhat.com?
>
> If no one volunteer to do that within a week or so I could do it, unless someone
> objects or have another proposal.

Then Alex volunteered:

On 07/12/2024 16:13, Alexander Epaneshnikov (aarnaarn2) wrote:
> Hello. I think I could create and administer such list.

But he did not create this list so far to my knowledge.

@Alex: please tell us if you still intend to create this list.

If you don't, I will create it next week and post a message here and in similar
lists when done telling how to subscribe to the new list and manage the
subscription which can be done by emails exchange without needing to use a web
browser.

After that I won't mind that someone else (possibly Alexander) takes over the
ownership of / admin this list once created.

Links to provide more information about freelists.org:
https://www.freelists.org/help/

Cheers,
Didier
-- 
Didier Spaier
didieratslintdotfr


On 10/01/2025 16:46, 'Cleverson Casarin Uliana' via blinux-list@redhat.com wrote:
> Hi, I'm about to retire this e-mail address which is subscribed to this group.
> I'm unable to do any operation such as unsubscribe this e-mail, subscribe
> another one, or even turn vacation mode on.
> 
> I recall someone suggested to create another group to replace this one. That
> would be good for me too, though I believe another option is you all subscribe
> to a group like Stormux at groups.io, and use that for general discussions.
> 
> I prefer not to risk creating an alternative group, because I've never
> administered a group, so I'd probably be too amateur at that.
> 
> Regards,
> Cleverson


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

