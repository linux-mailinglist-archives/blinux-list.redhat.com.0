Return-Path: <blinux-list+bncBDM4LSNO5MHBBVVVS62QMGQEYJRDKAA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 3080E93E3A7
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 07:44:56 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-44fe1a88f85sf33517711cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 27 Jul 2024 22:44:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722145495; cv=pass;
        d=google.com; s=arc-20160816;
        b=CCkXBIrDGrr8qdICsBNdR8c/ZRiM7J+mr8SHLAQgOC7uN7KCgPXXWS0Vo8XGpQuBbo
         P49oLbyQHjwUVlQzArPtQK0iPQ0V4sXKMr/KQjtBSPKX94iAEEPP+qLnXB9cLELJgpb1
         KApGweLKreiZmWTVNxFACfu2Fsexwqdnh2/G+HNCp8J8N2rDnf5ivoCQaleNMuNB6+f2
         j8Kcyfm2H3RvCF5FJMs2xvk/h9UniFuAV/XprJZ0tUXyiTdq/IzJAthVxAquWiGmyvYm
         UmS9+PVd1tPG/Ny9mDW/zBLLpKqfE8Ek8Cg+v57wabnNBVNhmC53VqCqnh/Oq5NGWZDR
         qPqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=2CI/MfPuqpKnEim2hOezpFdBF0sfC5qMH8X+3XxQK+8=;
        fh=SwIgaLKmpP/TeMEZ79A2RN0dVU94XDiuiz3n7X9XkxM=;
        b=MxhAwhcyL6wPGfU9UOhWrjPIra8/4CGQ9OZYMICf9Zm/XEam2MiIVh+zhTwcg6lEn3
         WC9L+TELfl+U6kpA07da+47YqhNAU5plaU1uwMbURh1wrxLkmUt5K19YysxAoO/8rGST
         qTBss7m4ECccqIwYEq6yPAO35oH0yKPG2M9NI8G1SBWqXOMZLR4lGeFhKnou7EaUvbHo
         Ugl4nGnQYzU+IN8UCaxjs4FPloTiAx/uBN11xxCljJlRm/5X7PZPS/2Kpuj/j8ExziiR
         0+o4zCtaypTDpc2y/z0WQC4bt05UZjlmT59t+3X8AiLnQQJvn3+jtttGPAvhAZgGxsEv
         xx2A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722145495; x=1722750295;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2CI/MfPuqpKnEim2hOezpFdBF0sfC5qMH8X+3XxQK+8=;
        b=SLROKKzvtDwgu9qnbZqZuuREqSxwilMMbogXuGMdPjxp3gla0Unl9R6OM2Ln5YxTQT
         HeMZDqrXta1A1SVN1S+nLarnw6kXd8aBVUjgFC6Q4dqIsn+AZsE2zHTJALxajU4EjGsw
         LVOf+aOwh0dfzsjj7VsQxWmMShpuadQdSkuV54HI2YquFulRY/3WuLSDflKmEOp4fiv+
         05G6Sj/XEJlvmW24DqRwATJtv7ywKXpQOKASzNS2Y5MkMXqTyN9XITRqQAkvw4bfxO8p
         19TGgwNfJcr8v0eORn6ZhcRpQq19hKrsUqa+sulpsa64QoZYZqQ64Ieuz01yi8+9s2BE
         iDfw==
X-Forwarded-Encrypted: i=2; AJvYcCXBk/DgSyiu7gqK81ZTyvj/+hoWTYys4NIwBERt9J6k0ibJxUONa/NnAIPpFTEZ8FGnHMgKv4tlq5cyEtVcNRbge97bQ3FIt3eT
X-Gm-Message-State: AOJu0YwLFh5l5Kvk/pDMikdb2C7BLpgU56lq/lTxT3iGFL8DenzgIkEL
	YhJB0Ky4/M1kI4IyH7/0+czPzDPO6bRRFIj3IwZzOO9Qmd+yq0lkRlswq9ZoYj8=
X-Google-Smtp-Source: AGHT+IHYboenfxfyBujx3ZJm0B5bu77Ywyx62tUH5AF5V11fayLukzg0V5x0VSutBoAnpkl/qN73xw==
X-Received: by 2002:ac8:7d10:0:b0:447:f469:b58d with SMTP id d75a77b69052e-45004f4e214mr61700091cf.42.1722145494785;
        Sat, 27 Jul 2024 22:44:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:138e:b0:444:e88c:beed with SMTP id
 d75a77b69052e-44fe31ecb0els61766301cf.2.-pod-prod-02-us; Sat, 27 Jul 2024
 22:44:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXdj64f14/QZwtK9vdSg7SKyYFpOAWYJD8fTXnHGiSoJMRLt0LY3o9ZIaDj6pT0iSMT+ELs7kz9IfKlK7Yusad5taNoQUp6NETyHmup
X-Received: by 2002:a05:620a:1a0c:b0:79d:76e5:be75 with SMTP id af79cd13be357-7a1e52243b2mr670241785a.10.1722145493811;
        Sat, 27 Jul 2024 22:44:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722145493; cv=none;
        d=google.com; s=arc-20160816;
        b=dqhqHubhY30EHhEeZA9Crz83CAeRAfZAwkAJerwYyQEvM2BL3toI+GaKBggtptXSa3
         K6BV22+FNKBdKXTFQUgcTZsufWsa1/EZRZB/QlI4onloPgbplKcjzOYXJmusajGyclMS
         WEvkoM8DYuZUw/L5Y7hbKmrFEDCJEzUDzoT9cZYldgngyqYL8xttAxVebX7rN6Z8aFtv
         yuX6z4ODo7bFfS0mwQ1noRizZIyTqIlu37+dixAlR1kKD15Y4l07UHPN8k8ncAKkjxKb
         ude7i/TNEia8EznnO0NBfbzN7eF0xcalFtlbSBxDY2f6/yZe3/PPIy/klLHxemKSrf1P
         +Trw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=r3ZnvVbqdtCQicbNn4INx8UKxtzOgIbB52bl6aBCo9A=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=lEn2dVx5xX2V/o3+jnIsEJcwPQN1r6vKlUnl7Mn5cYltAu3o9NybuSsnC/9W0zDA36
         /em5DoySjZQfKpiX5khMolpCsvSJPV9Ug1AMgfYnrKQQGx84UBc8WoFyaGjCUmVS3a7l
         QaLOfXIpZeCHKr8Pcxz5n/K1IPZ5cRhEIleJQM36LY67EtMqkyESHV8SARSdlogKEDcT
         oOpngvEqQmpAob3tw/xu7GSle6n46w3Xwy0v9ouurn3E4RA3gbWvulJJRDytx6i+mFPe
         Gq/o7q8FIBnrJ36QeW5ZfSQEc1A6hluN1PLYlMcSr0UVGWiqde/vUsn9qjhFbc20ZsC3
         O40g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe8136bcbsi72600691cf.84.2024.07.27.22.44.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 22:44:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-113-jmKmZKBfPWKizwQy-8Dtqg-1; Sun,
 28 Jul 2024 01:44:52 -0400
X-MC-Unique: jmKmZKBfPWKizwQy-8Dtqg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8A8CA1955D42
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 05:44:51 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5CECB1956046; Sun, 28 Jul 2024 05:44:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5A76419560AE
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 05:44:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EA72F1955F43
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 05:44:50 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-79-4Mym-MuVMG6HGCjUSULQNQ-1; Sun,
 28 Jul 2024 01:44:46 -0400
X-MC-Unique: 4Mym-MuVMG6HGCjUSULQNQ-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0LrdTn-1s8CGG1Cyz-016oFL
 for <blinux-list@redhat.com>; Sun, 28 Jul 2024 07:44:45 +0200
Message-ID: <61c34791-bd27-49da-8ee0-4e464ed373f0@mail.com>
Date: Sun, 28 Jul 2024 07:44:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: scan and read under Linux
To: blinux-list@redhat.com
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
X-Provags-ID: V03:K1:BXUubPytqQHAAi1XZ1gnEwe41t8NcKAN5stn7go28kpZVMGF/gc
 Zk9V3/OHKplT+7iIalnHrQFNnslWZRE86UTxL/ICACteR9yndofWrS6zGnGQmrq2EvMcXtI
 KY6ZRRbIkfBkmRL7f03aFmP3O1eYYCUYVR90r40IgfgqvbQVohqW0l4/RS91y3N7GTOxlw+
 Efzg4g++P+GpKUTS6UiRw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:WcenXZVPS94=;ogTFgoSy9g98FxzZpIpQ4fnFXnJ
 ujzMd5yaLO93XeDv8gaIlxwGHlwl8c3bGMGRqvs9AI783DQ841ipT/sOOWAhwfmQU8a9bVusW
 qxMCR3wTWzie3hggXN/StnM3GfCrscggL4kxjtde1Sbcki3d3FmPgXA/ow+0nDatCrnkmnuFG
 G+g5PoA8CjYoSZdTcPSlzyz/tGyblRAfyJ+86L6loXBWyl80kfGBhw1nHpz1Lr5/8NvMeKdVV
 VZ5TFQwuYVEtIKtqZ5vp94gwOkwsG+2YIGjyTHcsqNWP22/fc5gJdpf9x/nfpef4GcCZXAURm
 tTmWtVLdiEENeJ6pX7tMhBBYEUi1jilfjKi+ZuI76hrQav64ubhDJ9DmCTE+O1/S+H8Y8Bc/R
 jTUaLHm5YJTQRAf2cTAYd2LryBr0lLBPRTvuf/g5w2ciLWE6cZafk5kWCU+I9pl14R/12mcQu
 F1ay9rcx4SLAeRsx/Pkrayc0qAhDx/QkjARLAo0PmBGNF4VBwQcPV1fFBLQGx7/xoXGq71/Yh
 Q7xdZDowp5sh4DVfoigBILDGP2pMZBCeCAYZjdlJ5Ea+oMBdHoj1POCaC5rhWxXaJfzQsW7rq
 gwlk0XNEYi6evtgBbzVaK7va6g45qf0YYrcgbYJu6db4RYtuPKLMts5QKLhIjnTUyX9NjpF7c
 ZhO86OuP+JzbmPalPGfNUlquXnfA31eH/iwzwKFH5nX+zSY8XCYqiEBW3GD3U8pn52Exi96X1
 x+yFFueiB9zPYCK0dP3Kgakw7kTQvZWR7l5pVk+MtoLqBMdcxhTLtZs6JMdt+8/Gv/k/Fv/kl
 dPD2xXM2QkE8NPNxQ7iB/q5g==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 7/28/24 05:20, Ryan Mann wrote:
> Hello.=C2=A0 I have the Fedora Mate spin installed on a computer. I have =
a
> USB Cannon scanner connected to the computer and I was able to scan a
> document using Document Scanner.=C2=A0 I was able to save the document as=
 a
> PDF file.=C2=A0 How can somebody who is blind read a PDF using Orca? When=
 I
> enter on the document, it opens up in Document Viewer, but I can't read
> the document using Orca.

PDf does not mean that it is a "text document", could also have been
scanned as an image.

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

