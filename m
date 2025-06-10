Return-Path: <blinux-list+bncBCAJTHUAX4NBBJ77UHBAMGQEUKWUZWY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFB1AD424C
	for <lists+blinux-list@lfdr.de>; Tue, 10 Jun 2025 20:55:37 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a58813b591sf2417891cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 10 Jun 2025 11:55:37 -0700 (PDT)
ARC-Seal: i=4; a=rsa-sha256; t=1749581736; cv=pass;
        d=google.com; s=arc-20240605;
        b=CoA5CWPxQLTXNB24fOJWrxszWGd/Rpvi6V3s0T2MJKXfWXTXZuxHwEYmgkW/xMULEU
         CD/ahFyOQ09jfFBg9yDFo2QfQ097rS/WCGDOySIzcmZh2aot8eXWH2qgNu6BrepK+NR5
         8UeDI5wFTj+0qcKXWmzf7QiNORuMbQx87jyZr0vzmPOylExy405d2Qk7GTt0vCPgSsFB
         czIApL2iXfeEIVGgHbcKbAauDduNxKK5h5W11fOYztelFpvGJIGbjvykmOa63U2cr2dV
         VTB1A2A6iMYfV6NgC4gvMi3JkzfMCUk5sL8b6pFAstLgFdn2pO5n3mYgGFENNEhJzSUz
         lIWA==
ARC-Message-Signature: i=4; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=BlO7X/rF7cSui/8MZ0DSnnGEd2N226MmH67Sq58oAWE=;
        fh=F5xUW/1UQiSYx7w1qTPcngGkmpMKsBdwdPttFfV/VsI=;
        b=J/n025CH4uTqMutkM8B2MtUW9qM/8gGXDgcLqttYb06PRLNAjPlYTxBtUsYa0BTYHb
         SESKt3nWAAFLyCL29YM4NsDc3EdZYbW9e4QnltTEyjbdnv5/muH8sDSM/RdiOVhBr7gJ
         UfUmmsAqYlRSNw5xNn7Ut6Tfv3eoxXjElfQw+cHBtwF+GAr6MUUBuT7aKFCS2mamGPFw
         whSJo/A9dsSxlBfcp2IZMcvquZaXg9NU16kqiKcMJCB7rZMdimfhfHnjFCAk8lJC3bb9
         t68R+Z7Td7Jmolh+Qe+chz3JDbrGkLCnIscxBJmRx3acjqtcPpHG0SQkU9Imx1aZI5YK
         XxKQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=4; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=h2wBiIy4;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749581736; x=1750186536;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BlO7X/rF7cSui/8MZ0DSnnGEd2N226MmH67Sq58oAWE=;
        b=rcDSLBSMCQzKazP55H6rn0d1ldxlWxaqAPnPQyDFelBJv6UzO+GhB7P8QE5dqcQo1R
         2eIFU0lhQIM4Kdru3Li6WVEapnUAzRG/LUfFjS4eaO45Dz7LZKMvJ3kax8aWWrogTJ4w
         l40kBrAIqvBFX0NfyWKpfkOI08ilRo7nkhnlaV0NVC+ZwqjU0/9RgDIzMSA2/Nir8wj1
         tbUHf0F/CEXSSE+w6C2PEWVL37+Hlj1AEJHldGiNiEKxTAgzsJlWFF7vdF7GVcT5Ym5u
         ykuRkFnd4RnrE8zHcVeEVrilCTOOBWEiBznJ4pTMj+2X8/Q4naCYuav5mR86RZ+XzRMz
         koVg==
X-Forwarded-Encrypted: i=4; AJvYcCVsgyLxOB/nQ7KXBIfaCK0PzyBYnGZ72N+ANGJeVTRIvK1KmGG/aNcU+WVdrFEiWRu5xFPb3g==@lfdr.de
X-Gm-Message-State: AOJu0Yyuf31nRPHU4/S403wDo9FdXbvHJI/Bl8nSqBa8hP18LLnQRaZV
	sfjO1LHB/0SL+X10Y/sIkjnJu31p/j4LZ7IJ0+iAAIio5VdSac+RXZ5TPV/ea6kH79o=
X-Google-Smtp-Source: AGHT+IH9clovbO99mivRXHx/IPj9w40l0QMaRZHEsa+Hr/CzZvvDelSxbBTsWMn7qXB+wLpsCGDLyA==
X-Received: by 2002:a05:622a:4fce:b0:4a6:f59c:e83d with SMTP id d75a77b69052e-4a713ce268bmr7236721cf.18.1749581736102;
        Tue, 10 Jun 2025 11:55:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZdscP0iV1zme77dr04lUGuX2wZv5NGSjyHhD1JvI1lKsA==
Received: by 2002:ac8:5742:0:b0:4a5:86a3:b2f2 with SMTP id d75a77b69052e-4a5aeeb7380ls115568051cf.1.-pod-prod-00-us;
 Tue, 10 Jun 2025 11:55:35 -0700 (PDT)
X-Forwarded-Encrypted: i=4; AJvYcCWagFcgbK4xx9DGAlf9D/VI4EiQzbJLISj4SJGJbtQq1U6Z01zzjKHcFqOyH3nekPdkbTQgXNwfEcc7CA==@gapps.redhat.com
X-Received: by 2002:a05:622a:1b27:b0:4a4:31e0:c824 with SMTP id d75a77b69052e-4a713c8cdacmr8228961cf.19.1749581735108;
        Tue, 10 Jun 2025 11:55:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1749581735; cv=pass;
        d=google.com; s=arc-20240605;
        b=RuDkWv03HKXgklAp56tZQdxYfNqxwzlxfK2rrtGOCoBfays4iwLo1Bfx6Iyx5Gigz3
         VqwyJDk79W1juOPtCdJUoPg7+uDsV5eVb+r8duphY4xbv43ls/U2yNy/XUUhNKdqyEnk
         wjJOcFg5mesvs1gSQKKxtvKhz2truiGedBt6v8Q8q0yK7yGaTDaGcwkawriP1wqSOlP8
         AGtgS475jgJcax1sKrMz5F0ntyLOw8rX8MM6uStrMUb5nQsoDVuWGU6Htx/oDrBTzQzQ
         0szCsf2CGXrwlJrmayZyear4xxJ0WBOV1zGckxU2IdKaO7A9b+cwdCcMy7+9QwooA0Rn
         XLlw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature:delivered-to;
        bh=838nYHZHyR7EMcGXvbLFkaomu36HHqIIRHMmHcamTB8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=dnGxWbccPNzt/Z1mL+BFcsZ2qT/1hYToWqffiMdGYDQ300PM+UyIwtRBJf40/YyzZz
         5H3gFOCbMq0wGuA6VBfukciYy7ZIydLhh9DCDt5O2GUvbN4Qld84yHdo0NTLWUAIVPp0
         vgOEEFxTvN/bbAqLUfzwLmzXcWCGAgiBuzHN0b2ZLtjhVOKi/ZDcFO4iW6tOPu0CF8M8
         /3QkTKTkoe05ZdDbuL0kIScuh25C7s/JGJzKThm1FypW7vrw2xVbqqISm0Pcvpsf9raM
         cM6lQbOPgiYkGsaL49EcsQtvIBHu2/g0cxKdL6u66NCSaTVag+Bs/YuGhQOGpU493KF7
         nbeA==;
        dara=google.com
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@crosslink.net header.s=zoho header.b=h2wBiIy4;
       arc=pass (i=2 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass fromdomain=crosslink.net);
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a710ac05afsi9519591cf.522.2025.06.10.11.55.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 11:55:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) client-ip=136.143.188.14;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-170-ag5LHkPxMYqXnIeq7LhoWQ-1; Tue,
 10 Jun 2025 14:55:32 -0400
X-MC-Unique: ag5LHkPxMYqXnIeq7LhoWQ-1
X-Mimecast-MFC-AGG-ID: ag5LHkPxMYqXnIeq7LhoWQ_1749581731
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AA84E19560B6
	for <blinux-list@gapps.redhat.com>; Tue, 10 Jun 2025 18:55:31 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A8F7618002B4; Tue, 10 Jun 2025 18:55:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A62B018002B2
	for <blinux-list@redhat.com>; Tue, 10 Jun 2025 18:55:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 426081800343
	for <blinux-list@redhat.com>; Tue, 10 Jun 2025 18:55:31 +0000 (UTC)
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1749581730;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=838nYHZHyR7EMcGXvbLFkaomu36HHqIIRHMmHcamTB8=;
	b=rEdOEhQq+7fhYDTFq5RZ0mwNHEcxp0GonOAGXwRI30BE9a1ODrzPSxzceKsmdjg4nxPn+t
	4v4EMsbaufkaZg1aJK1Go83DbuY/+P9IEOIA1QtSwi8oYVDihEgQTOjV0w0xf/v1Q9INOh
	uzSPB4c9XB1tlCjXPo9EFNxp5K73rwgZ15FQIMl9GtUsmM2qqv4xkDmFzEQPn4ypu4JGEf
	lqWJ/dn2kSbnIb1oolNxu/iBecVKD+1zKIIas+oYd3sCTKR1VktyK+HyFYj8+vBXWBtkXm
	IdlLSLSXh364mPxktqbVygoRGaMM4BN+/2TyGOi5keCbjgjtOA7kH8q7eYqvzg==
ARC-Seal: i=2; s=201903; d=dkim.mimecast.com; t=1749581730; a=rsa-sha256;
	cv=pass;
	b=URYZiEqnBcqIJ7I0TCGOxbFLu2b3/pMg4A/LEDs0VWh76+GwGmiTycaQDGHjUD0sBLZUSg
	JFoHHQhv7yMaBKo2xLYKFdzQzcx0iM9mGFoY4H176lrA8diIBKYfZIFpMB4MJ5aJQkXbiS
	xbrnU7B1ez2TzmLliiF2B4z3DFV8me6oFD7qBSHHkBULF0MVN45We5AVf32f5axdtDMFxb
	nXoHLngiP58hCqB0OZMIi+mULipuLPBXKtt17H/DF8xLewuJn5lJCcybB3gV1DfwR0TuEQ
	IZ9E6YTX24Tfc0v04WJlgMD24aC1qewIwF7ENyQwPU9N0rBO27Tu8R0m2mb5hA==
ARC-Authentication-Results: i=2;
	relay.mimecast.com;
	dkim=pass header.d=crosslink.net header.s=zoho header.b=h2wBiIy4;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	dmarc=pass (policy=quarantine) header.from=crosslink.net;
	spf=pass (relay.mimecast.com: domain of cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-354-e7FVPvZFNguhewJ_4bZ27A-1; Tue, 10 Jun 2025 14:55:27 -0400
X-MC-Unique: e7FVPvZFNguhewJ_4bZ27A-1
X-Mimecast-MFC-AGG-ID: e7FVPvZFNguhewJ_4bZ27A_1749581726
ARC-Seal: i=1; a=rsa-sha256; t=1749581663; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=J9xUquD7z/U34x5XxVi0BOhoubGbjnu9CNsLEjr1cMSL84j9GfnzKeW17KQCqkPfeXc+2zr7UZvtPmKU5/IleZWLJA6E5KS6aHTBGMCgPhcUT5bek2oy73OskOmO9ZzGRI7mbUNJvNBhEzEC8fQ6DZ9E6whcpAeNpkimqxAEoHQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749581663; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=838nYHZHyR7EMcGXvbLFkaomu36HHqIIRHMmHcamTB8=; 
	b=OYJY2jLpeJ4IDeuJJwSKbwJbc8NeiC2A1wUx/2hdWve6Qgc29HLFW1QlyzkzYhNzvbSvqohRhx1Txoeg6+idj2Sfx6hQp0q+osJCYhzmG628B5iX4Iv5Ly4iQTRbmh9OTvAobpzLsJUPHSy0tgzVnt+T0yj/hkgLq9Ri2lKLIPI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=crosslink.net;
	spf=pass  smtp.mailfrom=cstrobel@crosslink.net;
	dmarc=pass header.from=<cstrobel@crosslink.net>
Received: by mx.zohomail.com with SMTPS id 1749581660856347.80036284974335;
	Tue, 10 Jun 2025 11:54:20 -0700 (PDT)
Message-ID: <0f0bd168-5b23-464a-ba63-6c19094ae700@crosslink.net>
Date: Tue, 10 Jun 2025 14:54:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: everything typed from terminal
To: blinux-list@redhat.com
References: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
From: "'Chevelle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
X-ZohoMailClient: External
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0uwi3RBGi_9NlE9Fze4eISXJZT0M6OYogdvtl9VpHVQ_1749581726
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@crosslink.net header.s=zoho header.b=h2wBiIy4;       arc=pass (i=2
 spf=pass spfdomain=crosslink.net dkim=pass dkdomain=crosslink.net dmarc=pass
 fromdomain=crosslink.net);       spf=pass (google.com: domain of
 cstrobel@crosslink.net designates 136.143.188.14 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Original-From: Chevelle <cstrobel@crosslink.net>
Reply-To: Chevelle <cstrobel@crosslink.net>
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

The history command shows what you typed. To put it in a file you can do:

history >junk.txt

It doesn't capture the output of the commands you typed.=C2=A0 There are wa=
ys=20
to do that.=C2=A0 You can also look at the 'script' command.


On 6/10/25 12:42, Daniel Crone wrote:
> I want to study all I have typed in terminal over the past few days.
> Is there a way I could grab everything I had typed in the terminal, and t=
hen put all that in to a text file to read over it?
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

