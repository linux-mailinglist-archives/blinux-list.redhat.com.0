Return-Path: <blinux-list+bncBCLPHQH4XEIRBEXY7W2QMGQEKCUCU3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 292B7954EAF
	for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 18:19:33 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7a1de7141f1sf206896185a.3
        for <lists+blinux-list@lfdr.de>; Fri, 16 Aug 2024 09:19:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723825172; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ym312bbefv4epwKNBji40RFCJa21F2iAyWEXftRQfIOEaG1oE/Z5mQoQ0vNXjTSo7j
         0JsiXnZTd5cLkEy5a/ZjY7mYVNrJSGsg6Z6QO6arGHTorBFdJYN/gYZWCKRO2ipxBIB8
         vLOpc+huKypk3SilaxiCE3ESZoRXabJCD4uhMmtMSrRsO0MbUQjO/niYEgoSBK2g50Aw
         rtq5mPGd4GMqs79c/mR3pw52z6Rx8p5zAEs31pKu4zXyufwzUi3bcfwxVdJETLyubnpQ
         F7WlYPGHorIx6hkxOSVrR0AMl4fRbIABshC0bLGSfGW7T+mW3t9KNgt3R94mmeTojDVl
         /8pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:references:cc:to:subject
         :from:user-agent:mime-version:date:message-id:delivered-to;
        bh=18Knupx7e3PgeYPAY+CKLwWeu6WrIpCf/Ba4Myw9zCQ=;
        fh=25mIahBuonoObMXfSszAAxcemP0WD+iJDpZZlyO0tSg=;
        b=t80e8Z8E1Tti3wNaJ8iyx45yjNlOPgWt5Cv9yRC2K8mqc8ZhmAXdDgAgyUATIAsPMz
         mMgqTgj7OkneUwzaqlJWJ7FU93yYWEXaQ8IPySYrDk0evdG9N33pcvoChH2WdwQV+VPw
         hAK2M9jywjuypA928m5pY/2RVbI7VEn2XgNcwo98SYrQWgBD4kUtpEfI/lRtKdZtemJK
         xX+6wUN6G+gcq7M4+VHkl6w+h4AYCtwEwWDFpEOnNIgzck/CExaBJN/KCE7YFQ58Pebs
         1B2HwK1LytiB1+5IitB4yrskcbJxYl+Kyob1jLcKIm51iAd9H6Y5LO1vcP7U5Sql/1ru
         SOWw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723825172; x=1724429972;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=18Knupx7e3PgeYPAY+CKLwWeu6WrIpCf/Ba4Myw9zCQ=;
        b=LuhSKzZzd8sc/L6B4ZQOewjB5ZQ4yXEDCkvDZ14GCHFcWLtBMY+I9gy7PGRHTRhFIz
         30dWxZ6Y7S55VrcUwCLI955EsueALsYZs/g77PtSGM5vY2yZZUDsrvhMXdJ+P0bu7xPr
         OPoaH8uJjaSVzXgEBYdD+LU0QxP6tB80eTkUu1oOk0cZbshT/i0YItf5SDU9l03xZcD/
         DZ2LQY5NBWis3wWJKz680LQPQltK2a09z5ZB2w8+Hhf/UeBSfI5FvICe5JXwlo1dIZtN
         /bmZgFWJfDHXAbhdXs3XLPgtJE43o91nHbcJn0OPfxwimusXE5r4/OEEsROU9v1SHn9i
         yfOQ==
X-Forwarded-Encrypted: i=2; AJvYcCXNta0AecJfmqP8ljI4xSXZ4JAq/puOz3fj0d/0mINZedOdL+qvf5RV/lmuK6jljNyB9rCTjjaKR4pFtb5q/yiZzb63X9bkG4XX
X-Gm-Message-State: AOJu0Yy27Ve71YPLZr4HmoIgVJMRilVdngsDncljRBaJTSt0bEbos8P2
	fsnrTLc9WAwfVM5noDgkZNYHJ6WgnK5hwGenJWS4P5t3A+BmAXjgDhlDvNi4B3M=
X-Google-Smtp-Source: AGHT+IEhZLh9vLy8Zj+D3BmEWrzX3EzQiiU1ZG5Ioi0HyIMWiLAF10t94X5p2wTyIaKohTpiT6Xrdw==
X-Received: by 2002:a05:6214:590e:b0:6bb:a16d:279f with SMTP id 6a1803df08f44-6bf7ce5aea2mr33254546d6.38.1723825171435;
        Fri, 16 Aug 2024 09:19:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:dce:b0:6bd:6d6b:9a11 with SMTP id
 6a1803df08f44-6bf6d8f33aals7051786d6.1.-pod-prod-03-us; Fri, 16 Aug 2024
 09:19:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVibaNoui6A4VzLki/J6TJKEo3Yf0OX1MLmo/s54lYg1n07kap2134gMyP4yWpTuHAY1I3hV/PS3pFaytlspV/c0s8gaUWNWc4xXF5u
X-Received: by 2002:a05:6102:38d1:b0:48f:e09e:ef60 with SMTP id ada2fe7eead31-497799fe0b3mr3699909137.29.1723825170310;
        Fri, 16 Aug 2024 09:19:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723825170; cv=none;
        d=google.com; s=arc-20160816;
        b=cXNFd/p20ym6CrrkG2Mk59lbd9vyDF7pyMqfMdx9PyqEXbi6BYhvcNPsnwun0cqaoX
         rWKnSeB9w1Ih/P8Pgezdgxj+oF6PZdm/Gd6JfPJ6QxT4RBHFsmqTW2UKy7FfOdBCBk9y
         YzKGaGNJyWzOt/AmgrSv8a1lY9agLPHdzAiKpF4hqq9J6aXT9rHJ7pD5XZRkZ2hWNWhh
         bSJVBZJ7RRkyGcbC2bYOmj0OnCt1MoeIDEpqAKjF9bjN7ld96swcGg9qgKvhsCvq+2e8
         EJtd8bc3s2TGQO6oYEyWWBDA2q6BLyWAG5911XUh7qEgQNyX/aogdBHkBZeKld2ysPb2
         a04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=M2D/o8Riw7k0kqa9xKBC4psmXa9PbaAuhJe6G5JWigE=;
        fh=eFiuhkSo8qJAKy2KgomfmVyZlD5KBzBHjsxyrojhpRY=;
        b=GySrO8xBomhxOXjBTbh3T7Qi1ZGjy7Z3FKGGd9n759a2+8dX/55CfZCzifDm8dYK4Q
         DgQaE6yk/ZX4vsM4TusldhgtT4EdYtJwz9i4RE+zHCwIGu/yFSDNKEy32UK2H/MA5h3B
         YxAlEi/+uKnsrH/NuT0Kh6Y97ObBCdGEtpfqJQ/a5/Cm1sJ3yAPditxMtt7ISLuxJGb7
         9DKEq6kxGXHsC2o9DpvOXxXLXg26MSuQu+iRDPwZ4cAH731lcLJJjt5XB8fvsUUMuWl0
         peYYkVKEUyvImxd4t28rhqjjlLqczN4v47FkPmTPz426ftq4mg6T62a82bkdvxRf8ITR
         obfA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-4976f8d60e0si677735137.13.2024.08.16.09.19.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Aug 2024 09:19:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-516-PZZaPVmNNjiFiI6cdywKJw-1; Fri,
 16 Aug 2024 12:19:28 -0400
X-MC-Unique: PZZaPVmNNjiFiI6cdywKJw-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C3F131954B0E
	for <blinux-list@gapps.redhat.com>; Fri, 16 Aug 2024 16:19:27 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BF7671955EB3; Fri, 16 Aug 2024 16:19:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BCBC51955F38
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 16:19:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 329931955BF6
	for <blinux-list@redhat.com>; Fri, 16 Aug 2024 16:19:27 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-400-bCSOLi8bOqmM31yPxXxx0g-1; Fri,
 16 Aug 2024 12:19:24 -0400
X-MC-Unique: bCSOLi8bOqmM31yPxXxx0g-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 1B15732108;
	Fri, 16 Aug 2024 16:19:24 +0000 (UTC)
Message-ID: <201b83f7-db4f-40b5-8d39-47446231d9d8@jasonjgw.net>
Date: Fri, 16 Aug 2024 12:19:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Can I Easily Run Wine with NVDA in Debian SID?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: blinux-list@redhat.com
References: <e8a061d3-79a6-e762-780b-1c6b6e205ef0@hubert-humphrey.com>
 <82e292a7-ad8f-430d-820b-b51d22517e84@gmx.it>
 <9ac9a8b2-1647-aa75-5015-a7ae1259faad@hubert-humphrey.com>
 <2c9cf472-2d34-4b2e-b1c4-0c71f0a99e08@jasonjgw.net>
 <be01736a-fac7-4689-9054-c4bc6d314014@jasonjgw.net>
 <Pine.LNX.4.64.2408152108400.85960@users.shellworld.net>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2408152108400.85960@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
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


On 15/8/24 21:20, Karen Lewellen wrote:
> More than a few sources suggest there are hundreds of millions of=20
> people on the planet experiencing blindness.
> For you to state that if a few are managing a task then a person must=20
> be doing=C2=A0 it wrong does not reflect how much like clay Linux can be,=
=20
> how often a slight change even an upgrade can negatively impact results.

Anyone who runs Debian Sid (also known as "Unstable") is more likely=20
than most to encounter exactly those issues, which is why it's primarily=20
recommended for Debian developers rather than users. I've run it=20
successfully, but I built effective Linux system administration skills=20
first, and I was prepared to spend time and research effort recovering=20
from the problems that occasionally arose.

If the purpose is primarily to engage in development efforts or to=20
experiment, then Debian Sid is fine, but for every-day use, there are=20
better alternatives, unless you're comfortable with dealing with the=20
problems that running an unstable operating system can bring, and=20
contributing to the Debian bug reporting process.

Debian Stable, Fedora, Ubuntu and other options are more likely to be=20
reliable when upgraded. If you want a very up to date distribution, then=20
Arch Linux would provide recent packages, but it also assumes knowledge=20
of the command line interface and system administration.

The essence of what I'm saying is: there are tradeoffs involved in=20
deciding what distribution to run, and it depends on one's level of=20
technical competence and comfort, among other factors.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

