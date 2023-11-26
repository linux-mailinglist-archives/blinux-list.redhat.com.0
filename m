Return-Path: <blinux-list+bncBCLPHQH4XEIRBMFIRWVQMGQEFFDKB5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3517F930F
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 15:20:33 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4239f75a585sf18753731cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 06:20:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701008432; cv=pass;
        d=google.com; s=arc-20160816;
        b=aLXkU0GnFp6hZOVWp8SvaqWBIsYD7Jnl7Hm6nPQVzTc0c9H4QTQaWyDdlichE7FmQc
         f/toWfyopQw3sG2QLzkt1Q29F18DmGqksh8BsXhTyhiGwzeBe1itF6PAAMnjbNvDZ0GR
         Ye45Ds5POviZDMYBVYkS0BrfQZo3Lc+fE752PcAdDstvxRqpJQKYSQWTFjK3DmhsNZ3i
         KdZwT2IoloZUPdCUu7YSwlDkOqn+fj5yODv4QFNa434jOoZ5X4rdmIdn+RaoQRIYOnOQ
         xKYyrpCKEATo5bsEF96xge3L+XlAB45X0V6ybBOOGihBX9P/cnpNY8vtbmV6VM8MO794
         QL5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=gztY2PlcSRDBpuP5hT0+Vx2Us8dlPUS7deXSdm+3vCs=;
        fh=LNjOajhr3fYBSReqTqgpb5X2Yh8PmfdC/w2YWQhMuEs=;
        b=htYmpX9xBSc0xz0fQr+0HElchBZEMBja9xc/MoxX5f/AByfi9etHTvZIJkTNu5TfEp
         wEM3AoX/GOBmuT78YM1J6wdzpjbrNgqq108NONZyxa8xRPSnlxYmNAx4HLjHFOdBpKG/
         aZdbdp/VZHwilIvk+PQ7dm/43Lyh0I9JRhw6sGoYgLV+wIYUlMzetEJuQi212HhlVaUh
         UPTHIMemXCleQU5qagHRnB5DXZrW3IzSuPdIwuaWvR/Qvl17/xjPAFoxV3cpJFCe3LAL
         eVvmMnCh9YpyVh929YuD8e0M8v14yCtBtZkNwHJiALaDsXGUtbsdCjUvQY8OGcQ16qyE
         4Gig==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701008432; x=1701613232;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gztY2PlcSRDBpuP5hT0+Vx2Us8dlPUS7deXSdm+3vCs=;
        b=rOpiLLPF9596kRIgv2EbAFXTJ4NwHyQf728iUr3fztGp/i4Q2OukwLlk8/SGfxFRWN
         mlp1hs6LAlaJ32CIOTKkHgBT/+/NfHb+B7wOL7hzyBFTbl+TTsVuWPnNP/7ElSQZd/ji
         XGu0JFhxbvF8wC1Kcm5cmqSE1QJLgATMEQhhsPh7VqXdFW6NcAFe5xwC9xhNlr+9ytel
         9YMgpN0RWNTMXLok92pFAkp3cJ2Cyp0NLITSE5H7J5+sQCDhmtwFAokySxDSRMAZ8BhV
         hGXcaQmo7GGWuWWLryG4nhz5HcmR4zv//z6j+W3PohtLIiNhClLK8jk8DYobXbQdd+sz
         c7cg==
X-Gm-Message-State: AOJu0YxBLPFeVMad3KjC7jHY3Ac98m9moLDA34qS/6FqSJKxUkjxsw2T
	GJivQ3JCmCJp0Uxbxk0sfCZXXw==
X-Google-Smtp-Source: AGHT+IHT2vDP9BpNjgHMGxM2XxF1SaVqzg+5vr4Ure1vr+iJjL/1Afa1O1HduZ3lv81uHkWsFcw4WQ==
X-Received: by 2002:a05:622a:19aa:b0:423:6e9c:2de9 with SMTP id u42-20020a05622a19aa00b004236e9c2de9mr11530251qtc.17.1701008432430;
        Sun, 26 Nov 2023 06:20:32 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1009:b0:421:c71a:9295 with SMTP id
 d9-20020a05622a100900b00421c71a9295ls2188030qte.0.-pod-prod-01-us; Sun, 26
 Nov 2023 06:20:31 -0800 (PST)
X-Received: by 2002:ac8:4e88:0:b0:418:1f6b:7ca3 with SMTP id 8-20020ac84e88000000b004181f6b7ca3mr14313274qtp.23.1701008431447;
        Sun, 26 Nov 2023 06:20:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701008431; cv=none;
        d=google.com; s=arc-20160816;
        b=zq5MAlm27WwHHHkxRcJotPxcyoqKwJ+y0hBI/eoC8MlTahaVtXoM8QgVbKRO6V3yBi
         vh7lUpzHJVFftX5IgPpty3n/MIvsL4brRGbicc0KIhwW8ng+LOAZCb94eghnIDHZmOhX
         WJSxmIXU0AAF5DJA4KchmVlFdYr6rksRoIouk29D8b/mm4uOpuH3xR5ZdY9W8Wum163D
         692OjkX/R1yoBN0usI81ijV1axvQVdd8AMAju6iYf3z0rJkqQYeTN/RytqkttN/ZS36G
         EbFarrAOtoVXMNIj204NEHnSpk2ZFM8jDPm3DKivpnJ8geslBfaXoQb+nT5K8h0IQOf1
         GuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=hcCY2Pxyoqrv5CV1ZSYFeuol2HkJ1vc/ZdrvrHHolzI=;
        fh=LNjOajhr3fYBSReqTqgpb5X2Yh8PmfdC/w2YWQhMuEs=;
        b=FwlhCvVhYeVLHl2MYpOP+qW3H1dNI+Q8AEIvR5nGhxHTbp1krjSU/P/h04wzc4Qiyk
         Z8mX2GKEo+7Tv8kzXj5h0xi7G8Q2Q8r0MzpVnfwrUtqYC2ua/TPcvQnSds+LuHJ6cqLX
         WP7potjkCrJ5SvXZMFJ5iCSVYXfaB6SiGPnVIc71crTeqbpzFLYX3kpIT15cPmYTVtEW
         Q0hz+ZNT2JHcXR0Vi3QqDn8RiU4oEfd+gP3XiGK6pAWrWq0X8SIJcIA1y9n4PSwThTUm
         ZxCyZDJG6Rp9+WaR7YHGskp4aQ41IoAHt9DCnitLkhQEfgaEpsY6sJGmeVfcuxg5v/qY
         W3lQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id k22-20020ac85fd6000000b0041985eb503csi7543193qta.693.2023.11.26.06.20.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 06:20:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-67-a4e13IPNPICxmdnHEpfviw-1; Sun,
 26 Nov 2023 09:20:29 -0500
X-MC-Unique: a4e13IPNPICxmdnHEpfviw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2BEF1C068CF
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 14:20:29 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9F42C1121307; Sun, 26 Nov 2023 14:20:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 968321121306
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 14:20:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 644AD1C068CF
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 14:20:29 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-98--oc3Jd9BM9CBfDHjBYEbww-1; Sun,
 26 Nov 2023 09:20:23 -0500
X-MC-Unique: -oc3Jd9BM9CBfDHjBYEbww-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id F096432108;
	Sun, 26 Nov 2023 14:20:21 +0000 (UTC)
Message-ID: <ae412f52-ec58-49f6-904c-919f15f047db@jasonjgw.net>
Date: Sun, 26 Nov 2023 09:20:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: EmacSpeak Won't Compile
To: Chime Hart <chime@hubert-humphrey.com>,
 Blinux Discussion List <blinux-list@redhat.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
 <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

Also, make sure you have Emacs 29.1 installed. The package dependencies=20
should ensure Emacs is an appropriate version, but it's possible they=20
haven't been updated.

This issue really belongs with the Debian package maintainer. I don't=20
have Debian installed here, so I can't test.

On 26/11/23 08:39, 'Jason J.G. White' via blinux-list@redhat.com wrote:
> You would probably have better results cloning the Git repository to=20
> your home directory, then compiling and running Emacspeak from there.
>
> In any case, no one can identify why the package fails to install=20
> without better error logs. Check for a log file that shows what failed=20
> in the byte compilation.
>
> On 25/11/23 21:51, Chime Hart wrote:
>> Hi All: I would like to try Fenrir with a DecTalk USB. According to=20
>> Crys he has implimented support, but I must use an Emacspeak DecTalk=20
>> server. However, whether we make from github or run an apt install=20
>> here in Debian SID, we get the following.
>> Setting up emacspeak (53.0+dfsg-2) ...
>> Install emacspeak for emacs
>> /usr/lib/emacsen-common/packages/install/emacspeak running in /
>> Latest installed version: 53.0+dfsg-2
>> install/emacspeak: Handling install for emacsen flavor emacs
>> =C2=A0 Temporary log file is emacspeak.log.eiSp4n
>> =C2=A0 Byte-compiling=C2=A0 (~0.7 min) ...ERROR: install script from ema=
cspeak=20
>> package failed
>> dpkg: error processing package emacspeak (--configure):
>> =C2=A0installed emacspeak package post-installation script subprocess=20
>> returned error exit status 1
>> Errors were encountered while processing:
>> =C2=A0emacspeak
>> E: Sub-process /usr/bin/dpkg returned an error code (1)
>> Back again live: That byte compile 0.7 minutes took quite a while.=20
>> For the DecTalk we selected tty/s0
>> I suppose if I had to I could run with Voxin instead. Can any1 please=20
>> suggest how to fix this? We tried writing TV Raman but haven't heard=20
>> yet. Thanks so much in advance
>> Chime
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

