Return-Path: <blinux-list+bncBCV3N6GOXMCRB7GS6PAQMGQE4PQBDFQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8BBACA40C
	for <lists+blinux-list@lfdr.de>; Mon,  2 Jun 2025 01:59:58 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fadeceb4c9sf3194876d6.3
        for <lists+blinux-list@lfdr.de>; Sun, 01 Jun 2025 16:59:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748822397; cv=pass;
        d=google.com; s=arc-20240605;
        b=D7X2zxZw/x6RkuoTaA0kklo2OeYpkusm0KHDm80jknESwpMN4xrnLwNobjddrcSeRM
         HuW1IrSa2RJxsf/c7qTBMEsS7ior23crugU+gqUhNBW5zH8f85b11lQkdgVPBeHS0xmN
         KAi5DnoCP22OR4gE5x8+RW8XfOFGaDTiMRPdoXdvYzWeabnKeJNrga2fWYy3nqJdqYYm
         yMpFAqOVXCB17G5i6NcXXDqCsnWgDOGxdDMgJ3KdJ66hQ3igwZB4KSFTqVJ7Ik90ZtEZ
         Rf0OlM2orMP29x2a+I3E8BnCJcVqnFFnqDdlf+fMCxXJSIFvCWUGmn6vUxa0O0LIoYzD
         Q+Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=/MkgruGXI4Tag558tcnEZfZypL8INjbf8ezX8auWgRU=;
        fh=pmp3+DJlZ4+C5wjFQvrsLI+gw5CJfUmqtmeBxbXy+wg=;
        b=KSRMYKFbppDE7PJiuzfAAV0oSnK3MuFwpghxHy9m6DLDVcU+M2nIZLz4X1L8RrIu8V
         QDj252oTT12kDPcQWuRTZCsXHXOqd0HGBSAHiFjM8AqTPx+845mWzqJqGuVKf1h9yZIE
         r+tVB9KwJkT+r4fRoIbVxoO8pqfe7oJ5SwHXHqiOPokbKsIUO72qikX0aITiF10cNgi9
         Kj7L7jA1IkNKgaZifK4hNjkwgoyRCicnUBr5CFMVQe5aaOgdFuwN9hPB4Y4Iw4UFq59D
         7XXSbsC6pXeDbKI6h0sigsgiP3vXDp+k1TGAEX6E4JZxZtI/auw7KxjRJuqgsmSZTAkP
         tkWw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748822397; x=1749427197;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/MkgruGXI4Tag558tcnEZfZypL8INjbf8ezX8auWgRU=;
        b=lIYS9OXUxwbqF+qqjM8XudtfkjwpmQu1UQSLo/fpQ5xjtcCdOPE1rkpk4oh0sroKO0
         ZFxgAjDCwEYT96OjYk/A4nZf+FoaU8xHXMuCQgGpH4ZQ0uiyySMFBe75qJ5MvamSzh2c
         LMy16UNVfouZois7llVPGGoZu4iIoF//qQ85kcSNms7lWpb2ARGeGGr8Gu4DNAMgh7ut
         If1DFHuqFQFLdtSkc7ZOo4PdeTkqzTssoNlSMYteEIN5qBoezEKJQbxezvtzPKRU8df/
         IETNuUrIXqDOvIzZu+kBs9faERRyCqp94CKD7nQzsMcrHxHi6OWku/lOhJXyzPINpS+t
         K+/Q==
X-Forwarded-Encrypted: i=2; AJvYcCXD5fRcLyw5SxN5zj+JNDDkxhPXK/cwdUVcOz2GHU2xtlNVX7WIX+lcRHm4Pw9oUUqKJ+WVvQ==@lfdr.de
X-Gm-Message-State: AOJu0YyzcuRFQWNs6jrAWTJeCh2+qNsc+7PO0gFELr734DXPuj9qEHjR
	iV3+tZ8oS9fSfPtCPjeIPXoMijlv7V2/v+ad+nwoe4TDo3MtFY5FEWaiYu9VpRUgOG4=
X-Google-Smtp-Source: AGHT+IFxgZVn+tyeTxnCVtM3OpWMU1iHRKHle4NGpuYBjtO+iD+bapu0SXCaR/ShjBJgC44+ABqnlw==
X-Received: by 2002:a05:6214:518d:b0:6fa:c81a:6233 with SMTP id 6a1803df08f44-6fad065159cmr65995696d6.3.1748822396804;
        Sun, 01 Jun 2025 16:59:56 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZexWOrxR2If1QhZyphVl8KZ/oF3WNezLDLJiIEZ1r/ENQ==
Received: by 2002:a0c:f6c2:0:b0:6fa:bc23:a7c2 with SMTP id 6a1803df08f44-6fac5d6d593ls63548636d6.2.-pod-prod-02-us;
 Sun, 01 Jun 2025 16:59:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUpYC3wmxAPiA0YV3qe2sLELFfGdoSEBMKgPpwqKZnBurkH2399N30zsBp/idH3ZA3F3hjbugDhtSgGuA==@gapps.redhat.com
X-Received: by 2002:ad4:5d43:0:b0:6e8:f433:20a8 with SMTP id 6a1803df08f44-6faceb4bd44mr206710026d6.9.1748822395580;
        Sun, 01 Jun 2025 16:59:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748822395; cv=none;
        d=google.com; s=arc-20240605;
        b=H5p6XHZlgH/yGINiWRlktBJpmKfzE4Vhx5j2MeddIQNaZ222uoAKlgvqWpFsDNDF+4
         Ruq58DmLYrqEowWA9u5uM7tY5doL7y7n5PxZJAePg/uC9VxhEtryfXHHFUZvyWlvYGfj
         2j784jtNK1J3WnRYz3MUlJF/wPZJ9xt6JQmZNYY784/eC9kh1K2Ij10vHNVu0kbNwZUS
         Ym4WLpW7oipaCmlFUY0s5X4M/npn0eldjwxye4vR0ShN+daMnpIpesU/crheW52dHuS+
         ce+O6WuUPfUMqkfszvkndjPveBz1ZUQS8A5gXOUrnvsX6ySE3xMvR2H5uxVPL49j4ocu
         5rfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=BgLPQihLBOPNwWjmIbWwD1B3KiKDUEAwkxtFpfbK+fs=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=EV+rXVTTDVCAMRNoJndWdCrYDh0BFIAZB5kMECQFdAFs0PKtWpU21jQsai1jeIt/nV
         1iRe1knfdi+MUSfq39HDw6dxLPukfopkLFTdg1QGBFsC4Dal3ZTSyS7ynqHp8LXYXacd
         lll6imUXvtYDdXe+cwX7qMobxhocrR0rpstRE+L8mBWsEBQARGsSiwKa/rCczybkRWGW
         qg6a6yGTGW1J2cDVyEdHOZiD/8eaE030di4L2qFZaGXueIH8cGAaAAtrpkh9ZBJ33FF2
         MoNvCjHgEldwH9bwoXkCbUBisa6m2fDmBIhatoPhvqS9djKssdhGyZCUaKuXvTkI6dss
         K0ug==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fac6e59e09si91501686d6.243.2025.06.01.16.59.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 16:59:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-100-XCf3_Qm5Omm37QZXcbGMlQ-1; Sun,
 01 Jun 2025 19:59:54 -0400
X-MC-Unique: XCf3_Qm5Omm37QZXcbGMlQ-1
X-Mimecast-MFC-AGG-ID: XCf3_Qm5Omm37QZXcbGMlQ_1748822393
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 318FD1800370
	for <blinux-list@gapps.redhat.com>; Sun,  1 Jun 2025 23:59:53 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2CD9B1955D91; Sun,  1 Jun 2025 23:59:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 29B7219560B7
	for <blinux-list@redhat.com>; Sun,  1 Jun 2025 23:59:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9A79B1956094
	for <blinux-list@redhat.com>; Sun,  1 Jun 2025 23:59:52 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-169-G8OHQgrqNBSDEdifkCgPoQ-1; Sun,
 01 Jun 2025 19:59:50 -0400
X-MC-Unique: G8OHQgrqNBSDEdifkCgPoQ-1
X-Mimecast-MFC-AGG-ID: G8OHQgrqNBSDEdifkCgPoQ_1748822388
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.47.142.229]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1N9Mta-1uy9r60wXE-018FHE for
 <blinux-list@redhat.com>; Mon, 02 Jun 2025 01:59:48 +0200
Message-ID: <559649cc-2a83-44c7-87bc-595d8051da1d@gmx.it>
Date: Sun, 1 Jun 2025 19:59:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: If I have a question about arch or manjaro, would that be better
 for another list, or is that all right for here?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <97CB0C36-A0B2-46A4-9491-680B80319FF3@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <97CB0C36-A0B2-46A4-9491-680B80319FF3@gmail.com>
X-Provags-ID: V03:K1:+BaEVlv6aa/7genxf7LifVDmY62XymgiDGtwwpzxDzvn84Fgu43
 p9A9f5e7ff5W24XSXSb72v58tLM2QywGwTJWsxoaUHwwPaswkgZFERERBRyp/0QZ/8vmhzA
 xwpnud8jcsbPgx+nQAhzZjWtb690k9LtqlhJz3XPeEmbaGB00OAVp7C7j6ZPX3u1KIYBI6Z
 YfNXxVq1x7/Gu41NMQgGA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:HQrE+qIQgXI=;8xciMKBlshV87qyQXFxvJ6O3/HU
 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
 70fj3+QSUeK0UC8b
X-Mimecast-MFC-PROC-ID: nMfyfWDfiHwvoOqkteBYK1dp5Y1_n5-SkUPP7kqEYmw_1748822388
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hNRrB8cC1quH_rELS4b-Vf0uLcm_g8ZrmTQm98Rq-wE_1748822393
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

This is a general discussion list related to Linux from a blind user 
perspective. All distros are welcome. I can't guarantee that you'll get 
an answer, as it's based on knowledge of the subject matter, but 
definitely throw it out here and see whether or not someone can catch 
it.~Kyle


To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

