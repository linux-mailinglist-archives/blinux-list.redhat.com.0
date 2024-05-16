Return-Path: <blinux-list+bncBCLPHQH4XEIRBJPPS6ZAMGQERJS45YA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5688C75AB
	for <lists+blinux-list@lfdr.de>; Thu, 16 May 2024 14:10:16 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6a0e381e63csf94389216d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 16 May 2024 05:10:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715861414; cv=pass;
        d=google.com; s=arc-20160816;
        b=j5TOUQl/vVTFr/9+xWfPEsDKvcXfMlBlhX/XzKF2Em9FFjCFONBDSD++L3uWtKPHSA
         3lYyFaY8Pv9ViScOgNj/mhf6sIRc7/O0H/941oGulGnfmJwr4qMghbWcBb1flvZAZiyi
         VtQSc0S4Ueno5aNMf2tvOQbslqMZigPd3uT719+qB3yuZsCC48HDvBkr7DmIMIiNh8Dm
         LWEzz0L0VC27c/6YVc5XGPcfAnie/4uDElOtyZen8dWsJepQ45mOWRbE5okxYh2vaohR
         Hi9JAZ4U3nt0i+s/OqHpa38abMhQYFwjw7mbQWRik7fXM6u5Y9F27ZmF2eSpRjm6mYtg
         swTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=6pop0/TzyYzXtDklyJOU7rb3s/WfRHFMyXv8aP5XREg=;
        fh=3iPoIbsazrKCA092fjjT/vdJ/ID1y05nWnuiVfzm0AU=;
        b=NpL6/31wLD7DzDh16fDvy0IY2kPXK644MwwnbenAoErsWyCQ0S2ECwDU8MOpEvyPOL
         piOgU2SnwSbs+ipQhtsVh5/cjn3xL2IWnNC1YtOaf1Cj/DH5QHCBYB+t0/ayJVj8yDqp
         IHZfZhYGsIbDdW/p7WxIivqAqvElD1DFzHhs3hcYuzmtt/LyhEUej29y/FhVPwMsUjAt
         8iwTp+izjq78girboScdY2cDAfcRMlqMNXbj8SzF047PyL/YfzxaGYLR9MluEJ8QFd6G
         euMEJGUhURu+stw6UU4oA9QZ9E2cRHpMyesVm1WTG0alLFEql1dokJdI+YAkWiHKOowA
         RjGw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715861414; x=1716466214;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6pop0/TzyYzXtDklyJOU7rb3s/WfRHFMyXv8aP5XREg=;
        b=fM5bNzJ3SB7NZGMAdZRzNrVL/DG1I4V48kDyXRYczluk90VpCDFlk6SVqYkzk9xU1X
         ZK191yl5BNChTlIZln720AzON7mIvny8WpeDng5Zsf03CV5mwfpalDmMSPNCax+9+H/f
         Rt3JNLtQlX/tRegj+hCQZGyTfNX6+rGcwlgkiAuvRnRu7OvdS7npcK3thc7fx0HD0PPN
         eaTctU/IwUV1koFQayZdVil8XGIeTeVh2tQifwHQiJwefShoVf/zERmbN4DAXvCMLaL5
         AiuAzFWZ1ynuyaMUb4TmgISjcHSMvab9/BFNQHxH5wvmO2nXKCKh2UckGPc4XIPAOV2C
         zgpQ==
X-Forwarded-Encrypted: i=2; AJvYcCWZE8JOVkqZ4CUojbb7rZRKFD49O+2k21ZdPE0muN6Xids3lh6x/0aNMXPmxbS62YKsm8rTWyWBWOcLo4BI/pjx03rysgdZg59L
X-Gm-Message-State: AOJu0YzZOLGRN8m9GlYFyjgiG9LR9qPqEVPMIiNdFMjWol3wwBTxOMRH
	BqfwNc7/VJQuktd6JH4cADdVuIn7HV2PfY2OU5TUL/uIRRfOtZZLcXG2t4vjMw4=
X-Google-Smtp-Source: AGHT+IGS6hCP0Q3HLWmxOWywk2baZHC+2cMGSK0xGk/Uo8XF0btjsbrwHHquRuLn6MtFIkku4DdYDg==
X-Received: by 2002:a05:6214:5246:b0:6a0:6eb3:6b6b with SMTP id 6a1803df08f44-6a16823fe06mr260688186d6.46.1715861414441;
        Thu, 16 May 2024 05:10:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:260b:b0:696:892c:9e58 with SMTP id
 6a1803df08f44-6a15d453030ls107804696d6.2.-pod-prod-02-us; Thu, 16 May 2024
 05:10:12 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWB8ty8TTwqliM8aujywHytj6lQqW9N/Kuw+QdyQxlpmctDfv8/tqUXbOQ/PCucxud/FKMgAmDm4FPImZPDbbOzTBmjRIVgXewG4RWD
X-Received: by 2002:a05:6214:4306:b0:6a0:7791:3d74 with SMTP id 6a1803df08f44-6a1682001cdmr204070226d6.38.1715861412101;
        Thu, 16 May 2024 05:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715861412; cv=none;
        d=google.com; s=arc-20160816;
        b=AX6LKxIEtSv/6eUJnd6sYMibP+w5w689t/kHW+yMb7LhpFrtVqN82Cqd6XMiMhzkfW
         A8koFmP1HoEOnRah99s0LodbT8fQ2zpT35A8kAr086Sowa2lQAzABpo1bFOpNixVRVdP
         IO85Hrifs5Nx7J/S6C/Vs/Zu0HqnkvQXOssqdFfTS5QfA8xb/WoR3kG+arGQsAgHLMoO
         YaYnWmBF8V20GM45PMk7bOZQGBX5rNn/jYmZp/6WGGE7i3HIXn6Ff/DKw5ZN5OUAI05Q
         2rPOckJWaRtsILuT/azo0xllmIuLCSvpSFH/GpOTHuAZek8uxQz3lr7LdQZdkFgfHVRY
         EsHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=KlHOAyASQ6LxKqar/ML4zvjg4mUn42oQZ3JBzEpV4Ws=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=yuCd1JVL1n4Ir0uxnW0BYjMnXBh8Bcm4X8d3u4O7PnbFcORvRKSU4AS2j+slxeU6M9
         2MENTrQSyGBCFw7pHSeF6dKba7jqyG93BJmmxIBbnd1THzWk+B2ErulUnyRhFAmEKo5F
         spx4vE4AFkT5/yTuLHWWmOSeFFgORr3A9r1RzIdoFTghkjuTsGZuCX7lVyF5DEp8kyRB
         4gojSkJc87a3vyZFlh64y+b6Z7eN/LJ4Jr9e0VHW1hiJZgI3x5ftP4iCCaW+QqxSve7d
         Nx6zVXWrA/v8ks8DH1LwvEtoiqsxLbH0OMxNPqDxqa9wkR3nl6IsToB3FRiEIZfgUpFb
         Z5Sg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6a15f29abcfsi7560366d6.259.2024.05.16.05.10.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 May 2024 05:10:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-522-7FZUaO-mOeic9VgCDzjQcw-1; Thu,
 16 May 2024 08:10:09 -0400
X-MC-Unique: 7FZUaO-mOeic9VgCDzjQcw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9F6D31955F30
	for <blinux-list@gapps.redhat.com>; Thu, 16 May 2024 12:10:08 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8FF571955D96; Thu, 16 May 2024 12:10:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8CC191955D94
	for <blinux-list@redhat.com>; Thu, 16 May 2024 12:10:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F3F521955E79
	for <blinux-list@redhat.com>; Thu, 16 May 2024 12:10:07 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-542-G_c2T-hqOvqG4okZ01Rn9w-1; Thu,
 16 May 2024 08:10:05 -0400
X-MC-Unique: G_c2T-hqOvqG4okZ01Rn9w-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 55C1F32051
	for <blinux-list@redhat.com>; Thu, 16 May 2024 12:10:04 +0000 (UTC)
Message-ID: <ebbe05bd-0aab-43cf-be17-c257740aa7fb@jasonjgw.net>
Date: Thu, 16 May 2024 08:10:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Booting from USB stik via CLI, possible?
To: blinux-list@redhat.com
References: <CAC9uDhb1dtJqbniKd=7w6nn_XZ20h0sV9-nnrNf+2W35jUvw_g@mail.gmail.com>
 <ab741eff-7034-44c5-b7f7-1a34717c22f3@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <ab741eff-7034-44c5-b7f7-1a34717c22f3@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
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


On 16/5/24 05:25, Harley Richardson wrote:
> You can use efibootmgr to make your USB be the next boot entry the 
> next time you reboot, only takes effect once so when you reboot again 
> it'll go back to the defaults.

This is what I would recommend. The boot order shown by efibootmgr 
should also help you to navigate the boot menu, if needed, by pressing 
down-arrow the appropriate number of times (even without non-visual 
feedback).

On my Lenovo machine, for instance, pressing up-arrow in the EFI boot 
menu doesn't wrap around to the last entry, so you can ensure you're at 
the top before moving down through the order of boot entries.

You'll need the boot menu in a situation in which you can't load Linux 
and use efibootmgr.


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

