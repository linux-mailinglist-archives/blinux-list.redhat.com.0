Return-Path: <blinux-list+bncBCLPHQH4XEIRBSGLQW4AMGQEU3S4JKQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E9099182C
	for <lists+blinux-list@lfdr.de>; Sat,  5 Oct 2024 18:14:10 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-458278ff48fsf60780901cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 05 Oct 2024 09:14:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728144841; cv=pass;
        d=google.com; s=arc-20240605;
        b=P89Tejga0fv7c/Fh+eC9CHYxiw7n/De+oue4k5Aa5TpdByij+/rEH1zpu8JuTcfhnv
         p8mgjZybBjyspFCJk6YKMYcyhZReZDSzKRKK0MrTiZiNk8UgY7Vl/zJlhmLJoO5i3cp9
         w0W17lLYA1CbZu31fNurNTaFc2jsXfSyFFv1Q/FI4gId3+z2ZZ10wLCLcC98MoaXilqC
         i2BPIrIQZ6c8qaJ9ZpZhU4Lw0SFshJ2R6cocnNX1b+cK4PFSWVvW/FHTCV2JcfPND1IT
         8hV6wJmAw332Jth+rUnPA72DSin1kmiycCfNT2glxrAYEMQRny7pS/sljkqYgo1Um1Gg
         SlUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=Q2AgQ3cB3CpQzkd+sohbanY9UvzYmmw69qnztgQ+cuA=;
        fh=0s1Al+W0G409ujnGWeCVmh5XQFwWdRLG837tOClapBY=;
        b=aeFTo1d94wK7l3/TpnGgY4zeN2+FrKHnkij2CliN222a0serqwbm6D2eqNzjh71rnZ
         J9OuAq0pNhnxj1gMs6kG5PBkkwZBoWPkVH4PMrk3W8LPzE83u03bTPwJ3H2bZPPVuMeI
         DZC/pN5BuyBdq2Dc0uANIE+BzmfFWr/sVd57BqRpCp7BefzmY/dQRe1G7l8HZvTK9Clh
         cTW1wXDdn9zvrqpIYmN3AqZE+Ny97NTCPH2AXvDW6T7dLpVT8zzbmv1hAT3lM466CL2x
         E//uHe88aRdx6pzRsNtjv+NPKDpw7g/d6dbjDPtzvTUSVH2vdfX1eIt2el0J0e+SJA/j
         phuQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728144841; x=1728749641;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q2AgQ3cB3CpQzkd+sohbanY9UvzYmmw69qnztgQ+cuA=;
        b=Hj12SWKwxvVqLZWejF6Wfz9c+odcESdy+BQWP9NCdMtrEmnneDY2o2GCxCmSNf2H+V
         7ic9oc79Jk/Y97bpxtzTu6EErF28e7jXJhhEPCmfIIDlMdnPW+azERC8+HESi5iw/5Mf
         HuqdgIe3oN18pe49FaIc7TRu1UyzjREda8AFQgnZUtKmasDDLreD6wohZiNfRmbqoo7Q
         hAiUHzNx4ECcX+m3bwjAEnX5k69fQoDSf6UqCemOPKmFe1LSQiaMCaArzkDuLJMPOI91
         gPNvyGJlTcicBwvRSZp0BRSstgII5uxup5WfEYd8UPwCZp/C93eS9TL93YvdMmDdCbdE
         z6jQ==
X-Forwarded-Encrypted: i=2; AJvYcCVlO2g7yJelAici9F9IF+wyJkQyeoxkFcVmMn6Nh9r4XKsNaVpkY8MJFLrV2fVzBGckcQI8CA==@lfdr.de
X-Gm-Message-State: AOJu0YwOUnO7URyRX+THdiI8NBDSCFJYTOYx2kETlIvTCR11VA5jeIR1
	Q4gA6o91naFRLvBCMeO1BLRe/MSSDE2GdB8uGh8DzBhI0/0SixXHUWnxlxECFAw=
X-Google-Smtp-Source: AGHT+IHUjEIoIGHrawgDUAKkKtPsIO8sPiKwYaGQ0sFUdQkTUpFVBR+MS8lEbmAmp7qqcZOxSW2l1Q==
X-Received: by 2002:a05:622a:44e:b0:45c:aab1:72ec with SMTP id d75a77b69052e-45d9bafa8c3mr121118921cf.53.1728144840791;
        Sat, 05 Oct 2024 09:14:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:15c4:b0:447:ed03:aa4b with SMTP id
 d75a77b69052e-45d8d60f40fls58907431cf.2.-pod-prod-09-us; Sat, 05 Oct 2024
 09:13:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXMPHMJzW3B+oqOOtL8Yj3T7D6JIl2nxZeMb+yaZCsHtLBNnD+IMmS52EMDgQrcCXLOtCUyEC7J4rOyag==@gapps.redhat.com
X-Received: by 2002:a05:622a:1212:b0:458:2b4e:33d6 with SMTP id d75a77b69052e-45d9bafb651mr109383371cf.55.1728144839742;
        Sat, 05 Oct 2024 09:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728144839; cv=none;
        d=google.com; s=arc-20240605;
        b=jYgKvIlEMLfO24Fo6Lw/+nj9F1VAidorxbr9RNxXtAiXubsIB8RxNG0uARtu5TwA0p
         zH8JJ6HRD7g4nfS081VA4YmWBtvZda4f6deuAGXwz2Fcwrp8oayyzkwyd1tRGTEmEwGm
         3Ur96pEfknXD0+nol07iCZSIjf0zoBuhk1AmiVIeWb5ARn+W0aerculqQSIU7wROZ8m0
         1VzUELZ8PV5T/IQO383tOrM7VnXqeYizCTY+vPkFUvs1mf7U1GDhk02OUUAjsrLTO9jf
         +Bsmh8DPGH8OItxbv2Y/6bucRIIDZdDUeN4PkYG4w4i3C0Q7UvGQGbSXIzJnSlGtlDky
         9+zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=iW210In4G8HkuhnHcvrYCLtwgp2qmTyMP3ZNxsqMG7c=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=bPdLk09NjzlelTVFWhrjIOMviz17mUQNCjmU1CMjuO/Lmv+TgDy7qrQYGAsfoZKDoI
         Y2l+Lvb3ZNO2h5gLdggiG8f4nrcQgST4agHjfVSAYyz4kOLFXLZdNBfC6hnEsOWwcl9J
         fhP2agVZi72+v+BKIXAHXcJEWBwFqBX3jUBDmAu3kF7CfNpRO2YZnf96R9chqMi12FgY
         0MQvG2FL/jDmqAI0CZebd0GQ4kX8238qd+cyMmJA1bhfYaFsJISxlnh0+a+/KUjG7Msz
         hohVV+p682r2FbNhwel6XtX9s+WQFAMjD7kPKRN4SFO50rfJVqGVrJiUcOFNmEBFVGku
         EH0Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-45da763be3bsi22390561cf.421.2024.10.05.09.13.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Oct 2024 09:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-522-8R-iu7FBNOyFrWCMrgdPkw-1; Sat,
 05 Oct 2024 12:13:57 -0400
X-MC-Unique: 8R-iu7FBNOyFrWCMrgdPkw-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 00DF019560B0
	for <blinux-list@gapps.redhat.com>; Sat,  5 Oct 2024 16:13:57 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id EF306300019D; Sat,  5 Oct 2024 16:13:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB5F73000198
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 16:13:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 67176195421A
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 16:13:56 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-126-7ebAy4ikOna34jLflPTC1A-1; Sat,
 05 Oct 2024 12:13:53 -0400
X-MC-Unique: 7ebAy4ikOna34jLflPTC1A-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id C469132065
	for <blinux-list@redhat.com>; Sat,  5 Oct 2024 16:13:52 +0000 (UTC)
Message-ID: <26333147-a134-4715-8eeb-400f9595a081@jasonjgw.net>
Date: Sat, 5 Oct 2024 12:13:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: a groups.io question?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2410042205440.1109016@users.shellworld.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2410042205440.1109016@users.shellworld.net>
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


On 4/10/24 22:09, Karen Lewellen wrote:
> For those of you both in the command line, and a member of any 
> groups.io list, I have a question?
> How are you logging in?
I seldom need to log in, but when I do, I simply use a browser that 
supports modern Web standards.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

