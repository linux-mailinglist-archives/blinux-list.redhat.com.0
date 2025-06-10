Return-Path: <blinux-list+bncBDM4LSNO5MHBB6OZUHBAMGQEK6633MQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 52524AD40E6
	for <lists+blinux-list@lfdr.de>; Tue, 10 Jun 2025 19:35:55 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c7c30d8986sf1801574985a.2
        for <lists+blinux-list@lfdr.de>; Tue, 10 Jun 2025 10:35:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1749576954; cv=pass;
        d=google.com; s=arc-20240605;
        b=DWAMvdlfV5wiEguttgSH/qqiUmuGC3/zQpvLKLi03Yy2iKAb5wHsWNQKv4md2bf7UI
         sy0Sb38DreMYJ9p1XjYr9JaukTvp3e6XBPXBVRZBx21CvFyhyub3AgOApulucSQpvasR
         yqB6hdlY0agDIzx7rsxitDowqWS4zUpg5yXvsV72jVmkkHoyCZriYWX9ROBsBBx1AF5i
         EBw3Ql/c3zOYuS04IYmtzKtyHwE6+upGMeZHZZMpQ58n46jiisvN9BTBa/o+LOggR8ek
         z/VStvgV95UcoaeIheiyoSDhp7MXkvMDicTDmKdSUrOryNDkQMWoUViJyeHx2Qwhk/dw
         knqA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=RX3vH/c0w3IQ8LQprkLS2a3dSrb7Pcnnm7zPbI9+jYk=;
        fh=y6zDtn+qA3OV4/0iklQauI5ZwuIcFfSBNVwqNqJEQvI=;
        b=FelDT747Z77KyKWhwuC2VxO/WsqelQAiIzeltnWBFWlBS1rkEgpWzS6HQrrRzANWHf
         DkRO6bKVBe9KM3WkfAGQPF2kxYh/WOoMbnho1dNqtPN3K29WValZUMcqpcTNC63S4UzP
         deNLMv8k4tvmVZrvkTkADoB80HP8P1QvZy8sNDZrnx09owsqrJLMYmhevUlHKBbAwRHh
         x82qm8lvO63z26oxnF4uB6gL+SasfKnKnKm1grcHCfGT2M+WosO62hnTIPmbGcy2H3A0
         BaPtkDBH+Ob/pnbo2jB52suHezOFKN0yBIUEnOKWFO7v+rDIx2iEUWSd7M5aHjyvlgxK
         RLog==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=jGW31cHu;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749576954; x=1750181754;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RX3vH/c0w3IQ8LQprkLS2a3dSrb7Pcnnm7zPbI9+jYk=;
        b=Zf0vPL2tThnznBs06VxUAbxC6+lJDLozoM9wqjy9oQ+0uX7hVxnjaVaVSdSnvGoaH3
         eE3rjPUNFSu2TdkI91bgcaJb1L/6bf/u/TD0SdJQFYfkbeSOdIfzUS5s+28cVoVqHT7I
         I9D01M2Mf/LtnA7cH3JeDogoG2KGu+yV3+e1zjhDn2/OCqeaMWm0qo3FBJ/7Grw5b3yb
         /hzLXBDxYRJZPh5knm0KaybofntVOocBsz2FhP2+jReXB3K8v2vU5HI7U9X5YLkUYhWt
         CDjOwajWEqQmfh4omOq4w5l6HgS7/DQbZS7vHntyfTZRcGTvWwfc+eB4agYYyt7rOh2m
         oJ8Q==
X-Forwarded-Encrypted: i=3; AJvYcCWnkNSJomzSxJaD9M+u1zTCNULNfOSLtX5hGmvVcdw1e4lNiZZC9Vzz5nAs7dS1AZYR+Fb2Sw==@lfdr.de
X-Gm-Message-State: AOJu0YzSNK0BfGbSFzjlABcSMbOOQ1WdahpNrjtO8FO/fgszuyHM4uXL
	Tpvh9iWrzt3lpBidONrWVujdTN04mL9DkLz5/2QDs2CF66qQhovBcQnTRSbTt2Nq6Jo=
X-Google-Smtp-Source: AGHT+IHkBlxLvWYT84E2LnihywiwoXy9AhgI0QgmGu+Aj319TS8BOK3/8mlCfW2ozFd0VNpOeFtd2w==
X-Received: by 2002:a05:620a:372a:b0:7d3:99da:bdbc with SMTP id af79cd13be357-7d3a889fd43mr42606185a.36.1749576953771;
        Tue, 10 Jun 2025 10:35:53 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfDZGINobMbpYl+AtpRnvSYlvKZ4eFvrI2g3OpnieTqow==
Received: by 2002:ad4:5ce9:0:b0:6fa:bedd:25e1 with SMTP id 6a1803df08f44-6fafff4d066ls107948946d6.2.-pod-prod-04-us;
 Tue, 10 Jun 2025 10:35:52 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUs3qJdkQF74F2jdpFgndSSGllkLuKN+W5hs3KtTq+TSc9x4eGxZvIxSSJ24//0FJfpTbP0TPItLwKulw==@gapps.redhat.com
X-Received: by 2002:a05:620a:4112:b0:7ca:f3c6:c0a1 with SMTP id af79cd13be357-7d3a899b1d0mr39030685a.55.1749576952687;
        Tue, 10 Jun 2025 10:35:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1749576952; cv=pass;
        d=google.com; s=arc-20240605;
        b=c0Qv78GOWGqb+UWYCCbJ9HEZvOexH7FYgOSLiv8W5zoVvO7L9XdaChk9NJj0VjNVR4
         zH3XHTLIhHHMhWsYZf/fQdyXdW62xtOEaRlqTOhEuzSuP1Cu0qb5n2e8BK9JFn2mJHge
         RCr86a5hSAtjWMzKu2ATuVsyk8lBlwSNW/LtPIwB084flLKaTEzNhQ/VuD2koi9Lsxsv
         WXkVnJWm6LvQjRF8PF5widkv4QdTzFgQhF305s3RfW6+7LVmr8bZL1U9V0Mn0X01KjQy
         ufBL/nxkYJUxS1/9uoppMaubsjOC7EkSfeSFwX0iPlfZTkPaUYNKZkZhFEuhy8HoMEOh
         6n2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=/quJycSV/CWZMuXT48Y5Ch3p316qVaaa0UAY6GaYY1g=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=UQKk02l023H1duXbgrayGBAH9tlIcfnzY6krknm71qaKSAxCPxpJNth+FodapJ/WPm
         LEzzqFdbgkmlNOjyezu19yLGvh39NQ3v9TmjLKUGyvYD5+RDV/clvDnkCRWucBzCEtRX
         spSVHzrL2ywwILGhYfaWmw5ETHvafNkHu50x3hCLo52GBQlMFOBgTqqqHpyg1h0wLsNg
         dYPC9Fa2vwMF1LXiQNTBotF9kRDZ9wBVmmBIZ7CEvy4xecxkHQzJIehWeHXqtSTc+OvN
         wka0C5uF7gWOET+UMcwFAQRh50h0SWhd2DYi8rUCHDvkIqOvy//RHMCq8Ff5CwMFc9cy
         HrCA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=jGW31cHu;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7d25a60c5bfsi1040053085a.326.2025.06.10.10.35.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 10:35:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-526-1OBVyqcsNIaokLYOsZKd5A-1; Tue,
 10 Jun 2025 13:35:51 -0400
X-MC-Unique: 1OBVyqcsNIaokLYOsZKd5A-1
X-Mimecast-MFC-AGG-ID: 1OBVyqcsNIaokLYOsZKd5A_1749576950
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 746E5195609D
	for <blinux-list@gapps.redhat.com>; Tue, 10 Jun 2025 17:35:50 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4F98819560B0; Tue, 10 Jun 2025 17:35:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4CF1F1956087
	for <blinux-list@redhat.com>; Tue, 10 Jun 2025 17:35:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BE2CF18001D6
	for <blinux-list@redhat.com>; Tue, 10 Jun 2025 17:35:49 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1749576949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=/quJycSV/CWZMuXT48Y5Ch3p316qVaaa0UAY6GaYY1g=;
	b=HgwVpXaDNZhc2YQCEQ8fKBEkH5/wAHkCujsCNFPuATsCfi7w2wThYOMlre288544Fc/z78
	G0hZInqRFJ3IZinQt9wrG2eCoLi7qP3ZTCQ8ee+9AswRwfe/P3gxQhCCH28Rf9zpexdyfh
	jb24Xrr+Blq6fdiQqSftOIZ4UbFnYbVFq1aSexQw9lReWHm1thqa9hs+S9ykpuzFKOuOxF
	WFfybrdrueh9KkSv7VS9vLM8hx7YyAiEPuX7tuBu83MUl8+mNQSp99T2uh+rYZpqQSXls3
	IgruN+HYyBIpcAgJZHL8vPWIrUA0G98PxOWH2NV/oXoVh5d2hIC4ABd67TQxLA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1749576949; a=rsa-sha256;
	cv=none;
	b=lyE+O7YIMweILcsK5vHx9Nw98rSszjTa7kUctIYozaft+6zEQV2ZzMAQEcSu16xXTM/bxU
	/KHoexENOasi/hgpuzpifSoCP450ySN7KRxWXQEERMmG44rS2qD5dWY+/JigL2JSox0Ark
	ecUqDOlrsLOALIOsK+/6B68N5AQZk4e3AzRBq+BwTNHOBvEQPyOON/s5e4pL+107AQgM4C
	Qzmd0sahAO0qApC9fRDYiHkJCkc/vU4TG762S5w9GSsWIrCaD4LBTu9YN45K5JYhswz/bM
	szEyFHdROI8LUk/9Jt5S/BXxYPvPwxaboxz78tBIGq+xBcB8ycQloqn3QYelVA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mail.com header.s=s1089575 header.b=jGW31cHu;
	dmarc=pass (policy=quarantine) header.from=mail.com;
	spf=pass (relay.mimecast.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from mout.mail.com (mout.mail.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-22-4THcFWmNPPKHIPFn8_7T1A-1; Tue,
 10 Jun 2025 13:35:45 -0400
X-MC-Unique: 4THcFWmNPPKHIPFn8_7T1A-1
X-Mimecast-MFC-AGG-ID: 4THcFWmNPPKHIPFn8_7T1A_1749576945
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([193.74.50.9]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0Lny5W-1v0aYw3hrk-00btvY
 for <blinux-list@redhat.com>; Tue, 10 Jun 2025 19:35:43 +0200
Message-ID: <c1e3cee6-2e13-4aba-8931-6adfc383cee0@mail.com>
Date: Tue, 10 Jun 2025 19:35:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: everything typed from terminal
To: blinux-list@redhat.com
References: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
X-Provags-ID: V03:K1:FXaszp5qgrTW7C2LPNBMkLVQdQBiLFUheU884VFpnkvkIKGL6Ia
 in/TjEFkkd1jgpm3D2LcX5Ux8oWRyBFN1Sjh9GEtsx7xly2AVVrinesg3vHiNi++XoRhEfL
 b+mdGcvTO+a9rJ1MG5H8lNwtDYxbcDLuhlvs8GwiVBEPQ8sdP6BDgOKKQ8qjZ9YAq+UFmk3
 TlvWHLRCHfwGKl2Kc260g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:A8CvbD5teOA=;idjJ1RInsqKC5J3Vpy25og1D7D3
 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
 ZeyajycanoP3Pq2cNfBAL/pv/nX/ZbdVJ9
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qEgpuylsdbeL6Y2QAwAoB6PJSLM6uavC4__TXsykztU_1749576945
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@mail.com header.s=s1089575 header.b=jGW31cHu;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com
 dmarc=pass fromdomain=mail.com);       spf=pass (google.com: domain of
 johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 6/10/25 18:42, Daniel Crone wrote:
> I want to study all I have typed in terminal over the past few days.
> Is there a way I could grab everything I had typed in the terminal, and then put all that in to a text file to read over it?
> 

See [1].

[1] 
https://www.gnu.org/software/bash/manual/html_node/Bash-History-Builtins.html

-- 
John Doe

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

