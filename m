Return-Path: <blinux-list+bncBCVPTHE7K4IOZXFYWYDBUBBZVHTTQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCB096183C
	for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 21:52:14 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6c332cf62b1sf6849026d6.3
        for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 12:52:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724788333; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZfBXaC5XD7+G52tXUKlxgNPW0t0Pxg8v5qbIE0NumBlbIB/VwaawF7unfUuOpGOUWx
         zu37J2oHgVWqlyyfdpvhInGhalfld/qwiqOTNtAir50uPvh3Ecb5JHmNx/TWJzfVoY6v
         oP1JumySgba4RdPhAKjJ5+bCOUTNaRvqxV1vA4qTNybgQvqxUMcPdWk+h0Bgnt3m8gS5
         T+2Oqakt5pszh5rpIbOzK73Onx4IUtuj5ELkddublmUR1fKsDWwa+vVpD3GCbGgkLvcW
         Ce32vBtTmv+P/DgOdv2aI6q+QevU9IEcdHnOVPNjc2z+gqSNOQ2Zce6AhnJSO/XDn3Wp
         6BzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=ZZ12XRzUAupdTjCK5gHWLEQyIphUa4aIBrAsPfanIuQ=;
        fh=Kp7YDUlPbcoPDC33UDu9HFJfMAJd9jtr8LCkZ4/E+P8=;
        b=agcFTM/je9qKSnPvFfvZ6opTZFiHyiy0s9+PEeoC52SYwkBqf/jut0UlmQoAjUqhTi
         Y4PTLDinQU77Ar0h335HgMYqk1PSj0EWqaQsTPzIpAP8kB5X3jJnf0XZP2IXzxcWJTuv
         Kq1USCnciaxmq0AWBZr6XHzmO63VElTRvp2fnuaazJpRHP//Vo1IC1rgHzX8nqBaWmXh
         j6U8cXu6h1XEdgBfKxAbTazzZuLkV2Ko3Gve4tMbOvAzpi4iTI1dtPq+myORJU9WKp0a
         3RSn+vwjjgEpjdMMnId4aRpap1JRbwb4nvsnqb6z+cHbHOINBBqAKSpEEBWj3F8EN27p
         FBAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724788333; x=1725393133;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZZ12XRzUAupdTjCK5gHWLEQyIphUa4aIBrAsPfanIuQ=;
        b=D8uaUV1yqNgnUUsLLRgM1i4aAXoFGOKaWzqZQrgDFSoXBLJxK2yfos7bUoTLV13CH8
         ojeCoLlRT8PHyRcEvlu0NW6iU2bBD1FKhK95JFGZwMX8BNIV20Nx/0mKRqqTZAW2igJq
         /qXmPtkXj5myttT+LAxVbtDkYzKfMyPA0iFLZMpw2BlAiJrm1TZPQT5jdIKWUEkq/eBT
         yUFa0lbqTCZpnOGw1ncgsZRExG93OKTK3BR9DFdaaBNWSKrvdwsUTURuqVIEOCYmxNB3
         NasIILNlzaZXWvUcrbM6/m/6WpfpdjeJ+u/CQS5oP06FdCoQhIvwM9KsdMIPVwspZ5Jp
         IcqQ==
X-Forwarded-Encrypted: i=2; AJvYcCViEhcvsG9/GU07y2SkyEjHBeQhG++e2gKVdfPjlsmSWcki367/stEfJqbV6wC98oltsThA2g==@lfdr.de
X-Gm-Message-State: AOJu0YzGVTwMQnSdeqWr+yOquvttk+TW5E6pJWgWHH4FB2KJX6iYeLan
	Icp41Z9h5Sd2m93g3i48mCH1RR6GrGDGbb7Yw3T9y8Yt377QLY1taFlI4LhoXZI=
X-Google-Smtp-Source: AGHT+IHmtaZz7+08xt6XNmNKLJXw8ieewwduDPTSNA/gLUM2e/xziSbtJQn7RNl5i8aPr7t4pvPwBg==
X-Received: by 2002:a05:6214:4a91:b0:6bf:4327:1b0c with SMTP id 6a1803df08f44-6c16dc2860emr165072586d6.2.1724788332728;
        Tue, 27 Aug 2024 12:52:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:c6e:b0:6b0:862d:9779 with SMTP id
 6a1803df08f44-6c16133645fls89096316d6.0.-pod-prod-04-us; Tue, 27 Aug 2024
 12:52:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVoaxaepbXpA9S3gagvXbmkCrrN4UUKJdcC7tlg0JMEJVKC1LjjFTWGt+hhDpXostDfuilQm4ZO3NLwcw==@gapps.redhat.com
X-Received: by 2002:a05:6214:4303:b0:6c1:8663:e8f0 with SMTP id 6a1803df08f44-6c18663ea08mr88376106d6.28.1724788331509;
        Tue, 27 Aug 2024 12:52:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724788331; cv=none;
        d=google.com; s=arc-20160816;
        b=NKgYr/2ZRZHbkt4sU/u5tYhvL0X0IDuJ6Tweiad7xT+EDVn45z9nPPEMu2shFT7bSR
         OQq51+iN6llrd3twL6lW2NpkRV8Zh3cyQYefeNKpuP8wIAxEoaGyKTY96UcVS2dgN0SX
         M7FnK9eTXzpnGVRBHe4uRLLIdQhZxLeDUXA+LQE1dH59SUapXDNbJ84bDGuSoKqijqM7
         K48m4n1Y2+uNuuDWPo2APWUcAy4IrjoyhKZJmIFWYhuYDmLy6eRbmcBncP27oq6d5abL
         3+DH8+wNM6H7j+NMkz9bSASLrLNUrG0yNpH8tvezgBbHUZp6P1IVlsStj4KL71pkKafh
         xMww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=ZZ12XRzUAupdTjCK5gHWLEQyIphUa4aIBrAsPfanIuQ=;
        fh=tBUg+Sp4ZT+GFfptu3d7lvKfN58tvI/e+OZyTq6I4sI=;
        b=HD+hOO5gBnUa6vL5pLnSVNpxGb6Y46UwCWJogQRBp7zUWVgvXK8XPJPkRfV53Hu247
         7WYInsrYv4CsC0Rvhx23WABe/fQMy1E20zO6JkEg92F5+RDXOkhQugrXNKS27TAeQ+hL
         Dy7u2VCJ1SqRfsPbKsCHWyk2xwB1jnJyT0ScK1tlPmBR5Ly35TBcm2tGp3Pa23Tk/T26
         P8ZS83yZ5t+2O/aOU5pAPDCwYx7zSFe3JQyJFt/v99nAt1Uo7YYp9SMOCQgiJ4hUTN28
         ui+xjAN3Lcjmdodb893RlKx6SVXkffcbaxMwoQn2Hb3rkyyJVGJ3/cT80/J/H9RTL/s8
         4E6g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c162dd425bsi141641286d6.324.2024.08.27.12.52.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 12:52:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-43-U-I92kGeNB-MCynMgck-8g-1; Tue,
 27 Aug 2024 15:52:09 -0400
X-MC-Unique: U-I92kGeNB-MCynMgck-8g-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1FF771955F65
	for <blinux-list@gapps.redhat.com>; Tue, 27 Aug 2024 19:52:09 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1942B30001A1; Tue, 27 Aug 2024 19:52:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 169B7300019C
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 19:52:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A6C281955D56
	for <blinux-list@redhat.com>; Tue, 27 Aug 2024 19:52:08 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-339-bO-0CCruP2G3bL9w_T8E6w-1; Tue,
 27 Aug 2024 15:52:05 -0400
X-MC-Unique: bO-0CCruP2G3bL9w_T8E6w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 0DCCF40508;
	Tue, 27 Aug 2024 15:52:05 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 0C3F61001C0; Tue, 27 Aug 2024 15:52:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0A51E1000B3;
	Tue, 27 Aug 2024 15:52:05 -0400 (EDT)
Date: Tue, 27 Aug 2024 15:52:05 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Joel Roth <joelz@pobox.com>
cc: blinux-list@redhat.com
Subject: Re: Grants for developing accessible software
In-Reply-To: <20240826195903.wwlxwqjipjjxnc7k@sprite>
Message-ID: <Pine.LNX.4.64.2408271546030.321099@users.shellworld.net>
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi Joel,
While I personally have no physical Linux system, not finding a path to 
either a synthesizer or screen reader that works for me, I am interested in 
the work you are doing.
I imagine it would be possible to access the software via a Linux shell, 
using my existing screen reader tools, much as I am doing right now.
There are certainly grant prospects,  as well as  your drawing resources 
via traditional fundraising.
May I ask where you are located before directing you to options?
I dare say, much with other command line things in Linux, you will find 
interested folks who may not experience sight loss.
I should add that Audacity, at least when I last tried it  was fine in the 
Mac environment too.
  Best,
Karen



On Mon, 26 Aug 2024, Joel Roth wrote:

> Hello List,
>
> Over the years I've posted a few times about Nama, a
> terminal-based multitrack digital audio workstation.
>
> As I understand it, Audacity, one of the most popular
> GUI-based free software audio applications, is accessible to
> blind users on Windows, but lacking accessibility on Linux.
>
> Nama runs on Linux, doesn't require X11, and is accessible
> without working through a GUI layer. So, it's a much smaller
> software stack.
>
> I've reached a point where I'd like to bring other resources
> into the project. I'm wondering if you're aware of sources
> for grants for developing accessible software or
> organizations that would be interested in supporting such
> projects.
>
> I'll appreciate any suggestions.
>
> with my regards
>
> Joel, Nama author
>
>
>
> -- 
> Joel Roth
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

