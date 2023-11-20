Return-Path: <blinux-list+bncBCLPHQH4XEIRBZ6E56VAMGQEBZVMB2Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C07F2099
	for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 23:49:13 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41b83b8dbe1sf61840161cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 14:49:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700520552; cv=pass;
        d=google.com; s=arc-20160816;
        b=0QpcH8l6XAT3I4ANH6kHCTaZFwrNbD5k19Nrm2htW4dLRK7Wi0PkxoobeQNzUdsiCg
         6fSzb0knp1IWDPArXTv7td0jePlxR2lD/n3fUWHzFamAr3uzqwJLf1NI71TE9e2gBzbM
         vXRMKsIbrjLjmbh5l/O/EOZUeUmSGU7crVygRIKUfgx1xz22nk0zfKcDXksqbM8XEsuf
         1FPWdyePAs1KmoEU7c20xpBW75Oamy6gcTPQ2uCAMxJUikIroKefCG70QLh+6GBXA1wY
         aQT52MsmZVQPuXj8PB8Ep8aWl0FrwK8lh97fOG5n+BYhMIZkLXpf2T78mr9oRqhrJpsg
         YOeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=4qPlCR2LI4EjV3Ey4DCCURgxcJcn6shuPsi1wXJ7vlI=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=sPRSES0/rV3updbUc9tR9pkodeSuU9Hzn97GzqGA7FwrKesNgozGgCMXkKn7lxpIgX
         olSBuiQJB/3iZNk9qndPdObxta7gcx9oqOqS8Zn+1HzUZjTvsjH/ob7CbzTZ0e8oYCYP
         0GZzN9FpGC6RjdL9i/cQEQlmxY+A3ee+qiBEsJ4nfpVvHgqSkgwzyJ/zCh2Jx26QYlf1
         8atmJL8yapQqFRWqL0RC2XnRB3XH82VNoq5FnBAzRMm7Fq0Tvt3uFGolRv3ecRqkXBrT
         p8d8Xfwatsa8inV1tI16eBk8pga25D3lmpHpb9WPIFAace7Lc2FpPBvN7DyQ6J3jCV7z
         hMnA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700520552; x=1701125352;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4qPlCR2LI4EjV3Ey4DCCURgxcJcn6shuPsi1wXJ7vlI=;
        b=d24t0rwiN0RA75HE0b0QK7Ly9ZMLHrrL+vWaxKZHNaW7wG4d3NPXdsinGYigr+kub3
         TwZX8fYwDozDjsCloOzxWTqQuof/dHZ3PR65Z9u7ua/fqNFcvpj0guX2UApjMKJMpn5I
         LlowH567tFXCKdwGygrzjnlPdRIHqRC6/c+rPmix1iIQ80oLzqFi7eRkH6hn8ZeQxy58
         8qkGrO6QlBmP2ddVznHXoUvObGhgwPEHLF3Q7SALNEL/VcktVwnkkKYPWVfuUQcPD9Ly
         v/BBikBGSg6jWlV1IokA7/WktTagX9pXgKSwmEp8Pud2fMopg3eGK4v3+J5dxtw4hpzt
         yeug==
X-Gm-Message-State: AOJu0Yw9R+PNu1AtmJe4SdPwWrSGZ13Rrqde7LdNdzbGNbbtON13HD50
	t91tdJ1EczF6lkgXuxWYYXZMlA==
X-Google-Smtp-Source: AGHT+IFK2PPNVNeYbQQTxtS/kdbd6ueaHrROJHi9b0hokTNklKUdKHZ7HHTiOVEzJRBLlrwwqXdHBQ==
X-Received: by 2002:a05:622a:164e:b0:41e:204b:f947 with SMTP id y14-20020a05622a164e00b0041e204bf947mr11900374qtj.62.1700520551848;
        Mon, 20 Nov 2023 14:49:11 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a1b:b0:41c:c118:e752 with SMTP id
 f27-20020a05622a1a1b00b0041cc118e752ls3753754qtb.2.-pod-prod-05-us; Mon, 20
 Nov 2023 14:49:11 -0800 (PST)
X-Received: by 2002:a05:620a:8c05:b0:777:dd5:6045 with SMTP id qz5-20020a05620a8c0500b007770dd56045mr8634035qkn.73.1700520550953;
        Mon, 20 Nov 2023 14:49:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700520550; cv=none;
        d=google.com; s=arc-20160816;
        b=r6Bpwbl6axxfVqh0lEog/Y+FLaYEpiYdwNxDcjHWujUY5re840MPfg+3kHZNhknOcj
         I+WGK7p7dbREAdW5qXF0G37JqAJbUrPOaoyoGZLMTflUqCtIFJE6W0Rb79PFzondUjKE
         BamdXL1wKwqUCL79FIgf8RAOcp2UEFgxGkM/i+ec3GNXl3DgQbYOVtztgavxeI9yq5xv
         LynfLjIfvTYYmMZVVBlYj+QA/NCUPkRP+5vQSjOiNsP2JU1qTeei5ZJ/KD08Dyj890EV
         ql9qmxOIOZO3bIpYt3RrmRdDLzFPpYnDoUhr7enzVPG5KsnpHyN0524oYRsLdAguN46a
         E6eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=1GzATbKfy1fWAm26wdm9iDsLj9ZBDbToTOzW6AmlFlg=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=FFiDuQYzAD+Qi6eHr08b/o3mWIOc4wotaIt9NHsm+7k2sLhRSJNigu+exKdGDRjdlO
         H8GjWomVnNCk3rKqGUUIAvxhSIyyEPdzTM0ATnoQrbB0xXna6mvirQxqiuO2vOtTus45
         UMAXG33aOpnLy2LTmv29Gf4sxdJDztAJUb2KmU5HQ/eRU4FtBb7IdLIcleNGqK7rNWXG
         FwYkfeZEYU+MOjXgzsBDBf/Qk1QGZx011SPmb7/Le2NteRtm4rUOk4lVgePFH4nKK2NE
         tU7UReEmVjcpfTFJnKDv3jDXXTwMjHjQAD3OXGwbFgiq9HIOl5LdclV0K4HwLdlbKxHy
         FPkg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o4-20020a05620a0d4400b007759bdaeae5si7990113qkl.94.2023.11.20.14.49.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 14:49:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-6-63P6RAiCMs2NPRdO6aSHmQ-1; Mon,
 20 Nov 2023 17:49:09 -0500
X-MC-Unique: 63P6RAiCMs2NPRdO6aSHmQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CAC81C05EBA
	for <blinux-list@gapps.redhat.com>; Mon, 20 Nov 2023 22:49:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 28AF640C6EBA; Mon, 20 Nov 2023 22:49:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21B1740C6EB9
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 22:49:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0071285C1A4
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 22:49:09 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-527-f5cxNmgjNa2f3IP_W1zEbg-1; Mon,
 20 Nov 2023 17:49:06 -0500
X-MC-Unique: f5cxNmgjNa2f3IP_W1zEbg-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 02F00321C5;
	Mon, 20 Nov 2023 22:49:03 +0000 (UTC)
Message-ID: <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
Date: Mon, 20 Nov 2023 17:49:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: google removing basic html access, alternatives?
To: Karen Lewellen <klewellen@shellworld.net>,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
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


On 20/11/23 17:30, Karen Lewellen wrote:
> Anyone use=C2=A0 mutt that can lend documentation, or a hand?
>
I'm familiar with Mutt, but not with using it with Gmail. In particular,=20
it is my understanding that authentication is more complicated now than=20
it used to be, due to Google's security policies.

This article seems to be a reasonably up to date starting point:
https://www.thetechedvocate.org/how-to-install-and-configure-mutt-with-gmai=
l-on-linux/

I have a GMail account, but it's configured to forward everything to one=20
of my "real" e-mail accounts, and I don't use it to send messages. My=20
Mutt configuration is et up to work with mail on my own server.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

