Return-Path: <blinux-list+bncBCLPHQH4XEIRBGVJ7G2QMGQECRVLNEA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C61953AC7
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 21:18:51 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6bf7a4ff102sf8796596d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 12:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723749531; cv=pass;
        d=google.com; s=arc-20240605;
        b=Wg2VyiJHgWDU62RxX9Y82rihhRTEXeAzR9rKA7pM/mIXw8iD44jtjrzGRCQWNChqAh
         wTfvVqf5mXTUZy8/lWHi/K8rXxTcG3gVEs4Kn8JEosDLXcuv4GNk6YflNkXdDQl4IQHX
         V25FpA2NMbqZjy994ANHwyC0mqH9MrQMpD3dh4aeidj/1173sIENOG3D6jdkCxBjQ0sS
         57In04uXNR+Wjy5JWayAy6b/AH2EG/Lftn/DBo93/tPnSERNVwutTqA1+bZirO7nGbne
         kRkVKxERn8rklOnR0NDeVsphy++8t9d3QUvEmG/RIJ8IjtgsBVl3oeUMZH4kz+NS5l7A
         AqDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Sy4KJXPampKxvmUQJi6lZa2zEXOcuCxzeq5/j0zEC6o=;
        fh=79lytA67DkQ5eOcIEA9ynimmxzcqmvhCuSl3IVzopjU=;
        b=gFFITYepHCqyRG2cPT+ZGZB2MDQDuSW7LHVvlKL0uowX7EU0barRKbNk0kLOBPB7/q
         BcJp6k04py8aMVstLUsKCHnRLP6yimKRznhu613edSPt4tMEhq6Qa/2/CHTEFTwqHeFJ
         lG67xHBEp10g5SyNkP6Hpw/ItsnZh8g9oMG4Ox2H8gcHfOLkFRK5eijzXO+0zLXmfWSs
         fAaeKxK1BGDfOd1DC3C8GeQJe4g6klPkF8Yif/4MwcogPT5x4Bc+PyqWSRtzWfGljvw6
         mSE/e2ToFeMz9rx0U9ZGe6bQBEMMTA9RRI28aPiuSLVXHTSxqs5jq+EmnBCnDtnvEo27
         L3uA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723749531; x=1724354331;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sy4KJXPampKxvmUQJi6lZa2zEXOcuCxzeq5/j0zEC6o=;
        b=eA70/v02TUsR2WnD2rcTUNa/xY78av3O+2fV8y+pBRINrx7eBNo3GM1vakQ2Svjod5
         qT+IhmHHaMzOH4TfqV+iL5UF5DFtbK2+DwA0ZvuONkJcwNrWXzX++xebrojh1gNePIhf
         5/ySjFqw5lfGIQtIgcl5iell12byNhn2MC/G+m6/CUdywRURpnmubA8dYg7nVR0X5mgt
         g1an0lbwchezt8VwX36DIu8q7Rt/IGzxZA0RZr4o1pgxiLA7qI8BfIzb7m8bB/hBE49v
         lGDvEqheLJVbmsAiMqsLIdQlYXz6clwpwssxZzsH2gMMrrlRwGeo4q4+xwwPpT44T1a5
         p2Tg==
X-Forwarded-Encrypted: i=2; AJvYcCU8Ay1Ryg7qG9haVn9wIOck+P14QLO+39dwEv4wWfOE77Dp+S+Z34QXXBfFO8lyFU/sbN1AaQ==@lfdr.de
X-Gm-Message-State: AOJu0Ywr59dadRMXYIioAfqO1DYedbIpRB9Hr1Nqv+mJxWY8AM6xO/sz
	utp42LjjDczmb/b2MpvXTIno7oOPl7amd1NgN53PSv24bwnQTcbtH8y0idlPtsc=
X-Google-Smtp-Source: AGHT+IGdQy6sA9nCjSDI2FfmBUqJXDnQZynNJOkRwy5nR8l07wVGROPdQV8NQgaYNEdC9Rm4X8Pszw==
X-Received: by 2002:a05:6214:cc:b0:6bf:7d61:8b72 with SMTP id 6a1803df08f44-6bf7d618ce9mr4573456d6.11.1723749530592;
        Thu, 15 Aug 2024 12:18:50 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2b0f:b0:6bf:550b:6bdd with SMTP id
 6a1803df08f44-6bf6d8e0964ls17148906d6.2.-pod-prod-00-us; Thu, 15 Aug 2024
 12:18:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWdM3gbFXJ0CcPYXlid3GfhWV+5UCUfATKcjYPfAi8yZGh4n0D6DrO25e5CmiosKCdcKFxvB7DkX+MbEA==@gapps.redhat.com
X-Received: by 2002:a05:6214:d45:b0:6bd:6a90:6472 with SMTP id 6a1803df08f44-6bf6dd08cb5mr72587596d6.1.1723749529634;
        Thu, 15 Aug 2024 12:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723749529; cv=none;
        d=google.com; s=arc-20160816;
        b=UvH6S6CrMs/srht2Ikih8ZZPXJMkvIzLvd7HXqcpSCB+IQf5RIr8w8lrB+RrxF81R8
         IoxNQTLdHWmonlR78O8oXA5Q3QOBqsI9dnfCg3EUvFJgs/p88ezD+/DTWrJqN1CbdCoK
         I7Xd7dGLhf11EAqCsog8ji9uQRxXflbWb09t6tXR/6cbDmJ6dBxC30s6T3+zpwd9iyuw
         NFKAsXFwIIwiUuXkjzNM7P/ODd8VmOD6Mo3nlhPoTsm4K3duR/5s1Y1Y4u+wzkvZ0NUT
         pcNccwR6KE7HCo4b8CGLDmtqk89TfhbBUVLuzbx7F/LzgwWdRV/16UP+VQWPd4+yx8ZT
         RMsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Y2+0x/WkAV0B1WEe5YOjfJAJv5EGKO7L/lNQZdUYrS4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UJOAsFyLtYwXbm4Xu4YER6JroQNVtrIc6JZLEVhEaIUQ5WF+mgTl/7KkKRMRliUgZk
         AC4d303WgK0/C8NCiDzt4PSUlE5HwEBYtImaTL1kkRyp9i/WiLJbI5IYSh+tn8U29XrY
         3eZIZ25ZXHUQiZKZAudC0yZkbjWp5C/ql0pRJl2OAMQwNjLI42UTX6vr1p0WqWvYu9Uu
         txp0xj2IiFfRMt5t/COSu8+1Ao5pAX4TJ9wwfs9w9z5F1RWJooxGPtwt5C7wFB/Zh5Kt
         IRxDS6QZ1yBdqLlZFEoPmcpcfp+ipaQMfQcUvSd3G7tTn/4V/Fkcbda21d45b+5FzZFM
         JA3g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bf6fef2907si23050566d6.389.2024.08.15.12.18.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 12:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-91-rTUIsV34M5ePSPmmUe42ZA-1; Thu,
 15 Aug 2024 15:18:48 -0400
X-MC-Unique: rTUIsV34M5ePSPmmUe42ZA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 539E8191816A
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 19:18:47 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 159981955F66; Thu, 15 Aug 2024 19:18:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1324319560AA
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:18:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B2AF195421C
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:18:46 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-574-mJYumxQsMDm9WNI1MYdJOg-1; Thu,
 15 Aug 2024 15:18:44 -0400
X-MC-Unique: mJYumxQsMDm9WNI1MYdJOg-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 6A6583206A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 19:18:43 +0000 (UTC)
Message-ID: <2c9cf472-2d34-4b2e-b1c4-0c71f0a99e08@jasonjgw.net>
Date: Thu, 15 Aug 2024 15:18:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
To: blinux-list@redhat.com
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
 <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
 <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com>
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


On 15/8/24 14:16, Chime Hart wrote:
> Originally ORCA was working until Python3.12, but even trying an older 
> version of at-spy, ORCA will not run, but for errors.
It's fine here with Python 3.12.4.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

