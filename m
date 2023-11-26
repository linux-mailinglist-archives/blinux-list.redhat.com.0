Return-Path: <blinux-list+bncBCLPHQH4XEIRBNEVRWVQMGQEFCO6GII@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B817F92DD
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 14:40:06 +0100 (CET)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-1fa193bdb26sf1709543fac.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 05:40:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701006005; cv=pass;
        d=google.com; s=arc-20160816;
        b=nVSCB+IDH0YB/4ouM33Bjhfysf6FbddKbG+42sJoUuxr26mxUNvWAAaZ7NsdnEJnv6
         cVKpQipAcjpeJSZyxchsRaLI4IXrR2uBN93ChDxQSStUCcyZWJfcwAH5hZotPlncrA2E
         m/HefnHI20Uj/cptxnjTr1gB+JzH3AesAu7v3P5kEkVl785ttAsdVlZOuxAdmr0qmV+u
         6vCYsL3oYBafY9Q99zqiZv6FZpu/m6wXNs5Q+1sO9ts1zUzCBI2Na6MCAK4QNLUDUbhm
         bW81qZQ7pjFPXkJ77AXB4G/t1F53Zs9+RZp+nDCEfaqOZyfvQkcQNPEfkoWMl2TfKuU3
         X8Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=+6R1XdsTKGE8IFE6/fzbw9lzlAOCCVba+8wAMuU0ZKQ=;
        fh=LNjOajhr3fYBSReqTqgpb5X2Yh8PmfdC/w2YWQhMuEs=;
        b=t0biD1fmUWiwyacBMUYZ8k/HOVeI67K31cJQusq7/37sHFtU+YHr1zTkOCL+Adax0P
         VDHqDN1A6+yIKukDb/IuNRObRmfUaf/Sqei9mdbahlF6+57jOLVx32cw5SF2iPCgivNf
         KEBVqfnrl6Kq8zpgIB78pelqv+d6ce5TRlVdnWBUhjmIChiYbTocom9ffDkw45O0ArX0
         d2RAx1gWa45N/C6tPq/AP8CxjDj6CG2l3pb7BRixfB7ndujnO/lfmdTSc7uxAJLsvQme
         1UNAX83PFxE+Go0An3voUO+fXMQDcDb3A8DNqnB6WcYd4bDcBqgRl5wU9zVfidaHAf5T
         ENCA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701006005; x=1701610805;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+6R1XdsTKGE8IFE6/fzbw9lzlAOCCVba+8wAMuU0ZKQ=;
        b=CrQjj35RWuiwbFYEr8elhRqfG6Gb1KaudPvxKw7ZLVVhH9QADLVOf1feHJWPi4+czj
         DgEc0QafpC5O3Qy5X5B4bHmHNlN1VFxx1OoAGzdlXXz4eMh7PlcdZ0Nhr8quh0S8hf/i
         Yvj4t6yfoOceZ6d53xjwfB/NzxPoRCBs9FpDv2rXSaPdCwXLVXOAamap8EcNTrgv2FvL
         kcGdmay2Qx1UZzqGHx/J12A9EU2QmD97pjB/uxE5YT+4r/hRFB5H0+SQEWLuzWrFvRM7
         emC/KVXUxDZLbVssoLlJ358o6UD25EtcxZeGnnJtAtbrUBdyt46Q9T+e+Vcaszl62ifz
         75cw==
X-Gm-Message-State: AOJu0YzvwpZ/ryyvxlM69VjK3CdlYqf2aT0yScKI5JncfrdqqmKRa0Dc
	8XvGF2uBtkcllPabffP7ykUpmg==
X-Google-Smtp-Source: AGHT+IEdm8+Q5cyuTGbIxRM7xSrHSUSUJRtW3ugeM6u4HDm6JML6ckUyMenZ5j0Z9qLYyDsq16ZCpg==
X-Received: by 2002:a05:6870:9f0a:b0:1fa:1db1:4293 with SMTP id xl10-20020a0568709f0a00b001fa1db14293mr6903539oab.32.1701006004912;
        Sun, 26 Nov 2023 05:40:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:1685:b0:1fa:1399:8eb2 with SMTP id
 j5-20020a056870168500b001fa13998eb2ls282730oae.0.-pod-prod-04-us; Sun, 26 Nov
 2023 05:40:04 -0800 (PST)
X-Received: by 2002:a05:6871:780e:b0:1fa:1648:5316 with SMTP id oy14-20020a056871780e00b001fa16485316mr7354703oac.49.1701006004001;
        Sun, 26 Nov 2023 05:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701006003; cv=none;
        d=google.com; s=arc-20160816;
        b=pSi6oMzq/KmXncpsU2+R2xrXu7LFVFhph2RrBeat0SlHID+FWnbgOcy74bXSGAyq10
         DgDS2GhoV20fXXvy+KWhpW5OgWgE7H6eC5xpMioKDzPcRX+uJJKC18pDqMIqj3/7Snam
         kzqvLzIfKTQqZ5lgf8yALDXdHCsQG+AOKIl22Ul1AfGHD5PxgbOYI+IiPQkka8CWuUce
         eC2dk4gpLQIVbpBg2xzNeBpGlaE/aa1l2at3u+ra1yHL6q54P2CYXL6gyTV2cfFWiK40
         Wv/nRo7XBZpL09PRjRVaDfv+4v4/sN3bR/kNvq3tF4dyCI9dWsZAXwxwjiuJ4U0D/gHK
         WZ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=I9TWXTqH4aj/9NFjbYg6zY3uTCKTaCPeNwxjBs6zsLM=;
        fh=LNjOajhr3fYBSReqTqgpb5X2Yh8PmfdC/w2YWQhMuEs=;
        b=OfzHTRrplDdSx25JjAk3XW/xuLrBBWtA7fz369iYIQ5XLmbpTnw0tAYtGmm1kMpGz3
         kCPnvUqsGlT3+qpDYZfC98uqarVcMKj/ZfQmjyuofh+nQAI1zv6Tk7vAOW3UzA3e943c
         6VdIIJeXXhJPLAm1GuSPlhl1GYj6AJXPIX1uqcwYk/5yF7s6v+bwaeazG38ZUaZYB+cz
         trPPyORpcfQTYLXRlze7b8O82GXCDdyL9vowSyBHXYZ1w7/3hdhLeGgKv6oXELwvbpet
         uSM0CNosPYgT9Z4gqnL6C9QLTiok8vMIBjtRvK6iPyMbnhThNmuQ9ZP9SS7hfTv0mgW9
         aLVw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id br26-20020a05622a1e1a00b0042395e325desi5673900qtb.26.2023.11.26.05.40.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 05:40:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-661-CPwi-1hSO0iHfYhKZK0pqg-1; Sun, 26 Nov 2023 08:40:02 -0500
X-MC-Unique: CPwi-1hSO0iHfYhKZK0pqg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68C85101A529
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 13:40:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6531B36E4; Sun, 26 Nov 2023 13:40:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D6E136E2
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 13:40:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BED3101A529
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 13:40:02 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-275-mU--H_vyOZOFLqqeE2XtVw-1; Sun,
 26 Nov 2023 08:40:00 -0500
X-MC-Unique: mU--H_vyOZOFLqqeE2XtVw-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 2CEF732108;
	Sun, 26 Nov 2023 13:39:58 +0000 (UTC)
Message-ID: <2d688527-c4dc-4aca-8c88-f43986fd032c@jasonjgw.net>
Date: Sun, 26 Nov 2023 08:39:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: EmacSpeak Won't Compile
To: Chime Hart <chime@hubert-humphrey.com>,
 Blinux Discussion List <blinux-list@redhat.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
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

You would probably have better results cloning the Git repository to=20
your home directory, then compiling and running Emacspeak from there.

In any case, no one can identify why the package fails to install=20
without better error logs. Check for a log file that shows what failed=20
in the byte compilation.

On 25/11/23 21:51, Chime Hart wrote:
> Hi All: I would like to try Fenrir with a DecTalk USB. According to=20
> Crys he has implimented support, but I must use an Emacspeak DecTalk=20
> server. However, whether we make from github or run an apt install=20
> here in Debian SID, we get the following.
> Setting up emacspeak (53.0+dfsg-2) ...
> Install emacspeak for emacs
> /usr/lib/emacsen-common/packages/install/emacspeak running in /
> Latest installed version: 53.0+dfsg-2
> install/emacspeak: Handling install for emacsen flavor emacs
> =C2=A0 Temporary log file is emacspeak.log.eiSp4n
> =C2=A0 Byte-compiling=C2=A0 (~0.7 min) ...ERROR: install script from emac=
speak=20
> package failed
> dpkg: error processing package emacspeak (--configure):
> =C2=A0installed emacspeak package post-installation script subprocess=20
> returned error exit status 1
> Errors were encountered while processing:
> =C2=A0emacspeak
> E: Sub-process /usr/bin/dpkg returned an error code (1)
> Back again live: That byte compile 0.7 minutes took quite a while. For=20
> the DecTalk we selected tty/s0
> I suppose if I had to I could run with Voxin instead. Can any1 please=20
> suggest how to fix this? We tried writing TV Raman but haven't heard=20
> yet. Thanks so much in advance
> Chime
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

