Return-Path: <blinux-list+bncBCLPHQH4XEIRBEX57C2QMGQEFFRGQOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 7921D953953
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 19:44:52 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6bf6da864a6sf12323216d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 10:44:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723743891; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zr01RQN8C+YiW0E0P6bxuzSFVEHrR0JbkXqqn1zBWnawHa+AwgFXPZhehsAplZI494
         N6uoh3ixEpNUx7xYHeGWu47N924gGDwp7AwtTCWsEURI/YSXkL8f8YlzM+4dPvg5ESO4
         j/t8K3KnYCXYBw1BvLvt8bNfKmbgSs1uIAyuhvpEiFkpbXgZ8uh7jIFB5qPncs7s4TxN
         eD1TyT8NkfHg72GwepqJJH1Obk2W6asTTX7hqAG1A+uwd6nYxWXZjFtFfgVy0/YATC4w
         yl6bYQ53A56YB4csJMPYUilvQuJkTrpSK/kE21XFUj7HGAZoO8/EhGzvd9nlAnWnuQA3
         fmvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=vKgQfxIfH8JtFgmBYYsSygv8eWSxqwfCtvQF25FUJQw=;
        fh=mncBaS9fXEkAunZMzwnmM/i6gNBGwcZULG3q2Z1KyAw=;
        b=LEe+G5I0DrzG3J1ZtTOeRcvkn6H5k2BicgyYP7zKZuIHcopXw4LGrVVLAsfFDSrR+1
         K0fn/RYPgapl31kmtcUpG+NtEdGpOP4ArPZaalkOtfNHxIDKI+PUBqIU53VLBYMdtm/5
         Gj64nbcKqZRtVe+0+/IgKokckzZlGJFsQnaysU07lhYwukgMJ/HPmQrk2DKMsIpliWEZ
         g0JV467Khn4pQi/OkvJE1SkzOJH8A8+BhvTRJg/592VwRqxStNaPaKgcpj4zDIcVcFtV
         JSRZuw0ynE4A/Ocou7BlNAz30ewlb4ftZ2OXWlFZsdktHN9w7o1AAFYriuqcf5yGg1S4
         22iA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723743891; x=1724348691;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vKgQfxIfH8JtFgmBYYsSygv8eWSxqwfCtvQF25FUJQw=;
        b=xLWln3i4fQmrJllkrMDbtgtUUmP5ywiOCJii6e84Yfn1DNWGw3qwKLtdyYxGohPTzN
         7rvgzh7hyexeJFxzyFuon6bgxhT2+e2/DXBUbuagisscq/Ry8GTrbpnvxHifB9vXePLX
         dVAoOeZ3NWCpXjWAcGSNk7pIHbKS0ZdSkz9XzeUwpDnklhHhG30X7vjWiuWbdxWKa9Hy
         0pdW9akAp05Kgx38z6GbhzytR6o3QrfQi+UeBdlwHDRDLFj0JIyjSCWQDuXbl7wQyx3R
         FfWFPXrdk6uqKgztCsUpnDTaWQ872/dNxK8rDQw4SEYZu9ztl7lmsdpgbYJ3SqnpYcob
         Rc7g==
X-Forwarded-Encrypted: i=2; AJvYcCXoO9e1a80h3T/STacZ9x7KJHtOrsqnAoNEo/V6EJGxzhXgcRC0y6urtVTym4f7OZ5rehxP1fn9GsTJzpPRlohySItkNuQCxo6z
X-Gm-Message-State: AOJu0Yxn9nBs1P8iA+CoxjXgzdZxUsJUhrSSt0a+p11VyjgM3BC3zkdh
	q9fNCgqBTKk7fN3Jphqt+7l1wsqWz0Xfv6okUumcEbuet5F22YCd54CbVHxgp8k=
X-Google-Smtp-Source: AGHT+IGvSWlVUTM4UpAzCXD4Amq/JHP4sEsY/Nf49XHlEdeUm1d/IybOr8YljeRZeXFYJ9XZ72dO/A==
X-Received: by 2002:a05:6214:311b:b0:6b5:e51d:441d with SMTP id 6a1803df08f44-6bf7ce81df7mr2243096d6.41.1723743891072;
        Thu, 15 Aug 2024 10:44:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5e8b:0:b0:6b7:9a07:4191 with SMTP id 6a1803df08f44-6bf6d8df2dbls22020336d6.2.-pod-prod-01-us;
 Thu, 15 Aug 2024 10:44:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWDtksIaEwi/vBrna4LodKtEWwWTjp7JZOcKybJCopKdox4C1aEYhBtjSaIwF37+bhPD+ZRjauzRTl+IIMFH0agomd+NunCQdEGvgvw
X-Received: by 2002:a05:6214:5f01:b0:6bb:9d52:6a88 with SMTP id 6a1803df08f44-6bf7ce917eemr2319456d6.43.1723743890230;
        Thu, 15 Aug 2024 10:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723743890; cv=none;
        d=google.com; s=arc-20160816;
        b=SQZULZd1N3ntAwnXYYm04mPw9Pqg0452Vgou0Ewu4XxCb1jnMGjZUwC7SUrHsl9uO6
         Rfm+b8MIHxsaDON1GDKEWWObShpLOEwAmjrPrKFJBZKq/g5EKBp6+Cuk3BdXgEf/ulML
         ogImtx3Orr4FrMZPcRqqMdgu88gOh0UCBmk3aNVohxw4rsGotaFlmSP33WQuvVwUX6Wg
         P1kTl9EsN7pYORDrRU9c/3iRDfS0+n1/l2lrMJi6Ry8suzsOwpcgXvJ0oew5eTDn/xl8
         D3CIMalSD81SXhRaW3k0Z+xVBD74SWTE69Go8Lp1aUclgYUExOUlcwP6Lv5L13a3r2qH
         l+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=1a1DXGFv2AC6BwCweL/0vDaLX4AgLxBd90vDNWnpjUA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=U/FWFDY8vgYnPN22feqD+ipHGkUPLQSE09wQNEkoaf3uDDLXixZNahHIT72k5bm2qU
         UWakaTE//11jHbTBEdZFZ/LRxqPNscfTxjdozPb2sGqj7o9Fcjx7hg3tmIsRB9+Bbl3/
         6on/EPZhQNWrA3qI3Hk8HtgDuZWIeMkUXgudiHIV8ufaC1g6XcOQ/nfIN20d9ZVHEzO6
         pn+hbLG6C+1bmotGtiFf8Z7H4Huw2pSXpODS0LJBhukwPoH/Ra+UYGRkR+vPEsS6bycF
         KxtU9JPb9hnei8DQr6JiIHAkoJ0SnrwYqdNhduWXuj58kjDXe+pZMPmcM7PAK8FrEFun
         bXCw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bf6ff2e398si21288906d6.579.2024.08.15.10.44.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 10:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-47-g2jZVgDaMx2K6ERMoJJ1Xg-1; Thu,
 15 Aug 2024 13:44:48 -0400
X-MC-Unique: g2jZVgDaMx2K6ERMoJJ1Xg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D67311955BE4
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 17:44:47 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D1AF5300070A; Thu, 15 Aug 2024 17:44:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CF4E7300019A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 17:44:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B14C1955BF2
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 17:44:47 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-96-4yt2AhKjOBSVpyJt5Hu86w-1; Thu,
 15 Aug 2024 13:44:44 -0400
X-MC-Unique: 4yt2AhKjOBSVpyJt5Hu86w-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 85B973206A
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 17:44:43 +0000 (UTC)
Message-ID: <9a6e375d-a5d6-46de-835b-aa0a078ddb12@jasonjgw.net>
Date: Thu, 15 Aug 2024 13:44:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
To: blinux-list@redhat.com
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
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


On 15/8/24 13:33, Chime Hart wrote:
> Hi All: Well, so-far we cannot get ORCA running, I wonder the 
> following? Is ORCA currently an only graphical screen-reader I can try?

Under Linux, yes it is, unless you run another operating system in a 
virtual machine and use its screen reader in that environment.

Many people are running Orca successfully, so you must be doing 
something rather unusual to run into trouble.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

