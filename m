Return-Path: <blinux-list+bncBDYPVTOXSQEBBUFKYWYQMGQEFMXLY2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id C56998B8172
	for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 22:32:18 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-43b0a5616ebsf22833751cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2024 13:32:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714509137; cv=pass;
        d=google.com; s=arc-20160816;
        b=WntlwhdIfIGZHgglrMyUc06ntXdhuXhszhiayBszMHwPwIs7hkMQRzRRRRT6enZ3RJ
         L4G8Y35A7GGlpK7SeLOr5lGTkfB6LvAd5JM9ITM8pBPsRBp+yTqTo6vEjOyYETj1tQJL
         O8h6AWnXRFG2U/Pijg80+j32JX2MmwB+fygO8gqqCpuTNczQm+7pg+c+b3Ei3rGaR+Ij
         u5MwbzIDC2TdA28+mYKShOlg3X1QS8LnaXX91S+cfH8QusFWIxppT5YqIX2SzVQQNrhq
         7AC856Fe28Z92/ZxeKVmaueTf12x19LcPcVsdw01G1TvEQ4ARiLLGLhNBIjTfGIQIkUx
         7nRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=4d3xZ2B0/jTv+Vz8zGJ7AjrArIo4w5yYGkK2tIEgi7k=;
        fh=uHCsLvIfxeyJcmEUehMBfAg2R/DQW3pRxnWsbwfLKNw=;
        b=E3hdCUJctLsko3SrpzzH8F3z+W4H15FWTfJdkgL2FA63vXsbXLKV+Rw6SKSSnu+4a5
         qnIrwCY0dx7gkD+ZgAqg1ICMiil02PBK6jjy0NtSZbcqQkdS4AS3qumwLNMporTNTQsY
         KGZd4X+IZKFbSAY+JsIkTKuZXVrK7p6pzEqTmvjCU4ULDWksZRkpe+zU/Zap+iySsUZz
         dSNfIYGWbsG/PF9Gla19HxYtOcdqa9kuAIi5sPrs0Eyu80d7wWHoO3Js/8TsgEsiXQu9
         eeHMnp1AOuxK8lPtoV3cAuB//U0RDjexsdFSLu746yW1Bolsx4hR3gt0upco0Cp3yo7g
         g8Mg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714509137; x=1715113937;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4d3xZ2B0/jTv+Vz8zGJ7AjrArIo4w5yYGkK2tIEgi7k=;
        b=oZwZDrZz2T5Lfhyk5VVyeRNF/oIi1Z4iM1woPk1KWITTQnE9dI0eA4MQFdM9oaiHTv
         UNnFPzcc1Gxaf/OETjbJ5uWR5z0bVQ8gHoxKzq+Cw9WPOA6Fm5GSbb/K9vh4UMkSOk6s
         pzPR5zEX6t91vETtpkq1MpBQVLYOpU+BbYMApKtAyRMwgAjEj9i3LocDBkQXkM6qd2ij
         RZ/ru0ScLXo033xHgVA+vrIstCDJeCPAuQfGiJw4e6xzaLacOYcMFenjXogO4QrbMyI7
         wXhj5OP+9xk8ZVtBN8pUwzXRQpA3rvVamZWDpXxignQq0uQZiYvBmdSirzu4bVe9e4KO
         3D9A==
X-Forwarded-Encrypted: i=2; AJvYcCWJODTI4jgO2hiiuOuG79VZmDqwWy07XjqGRknCFx8mK2MP+Py1htlJ7xtqIdvJejhRdpLnRZVYC1Uq6V8X9NaOmL3YXd/h3syv
X-Gm-Message-State: AOJu0YxQfW8Y7w0MAEEFTA4jHAgLUkczw8/DSoDSWHSSjc1O4oc/pQ5w
	NPnpC/zTqugYOhO5XBm1ZidAwBoJkg33HV6MI6eINJk18mEtHYe1GTkXckbb5Wc=
X-Google-Smtp-Source: AGHT+IGTiwq9fnyonRO0GVL21nQtqQJnvqT3gScirSLrKu1oc+rroxzrxaNk68LEsgb72fBQPxjHOA==
X-Received: by 2002:a05:622a:190e:b0:439:d0c6:6165 with SMTP id w14-20020a05622a190e00b00439d0c66165mr524180qtc.32.1714509137441;
        Tue, 30 Apr 2024 13:32:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:57d5:0:b0:43a:bd70:3310 with SMTP id d75a77b69052e-43abd703c30ls8278611cf.0.-pod-prod-03-us;
 Tue, 30 Apr 2024 13:32:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVcPFrfb3OuiOcTSPedbEormH415CeEGoEH0+rw7Eo8RTTuL85XknosBwGSItCOmAvZPGdyTBh+U/C96P9MJ5AzxaAsaktucScO+22w
X-Received: by 2002:ac8:5851:0:b0:43a:fa90:edb6 with SMTP id h17-20020ac85851000000b0043afa90edb6mr497683qth.60.1714509136360;
        Tue, 30 Apr 2024 13:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714509136; cv=none;
        d=google.com; s=arc-20160816;
        b=nSfBG48xR7Mmfop3NVpKbT9+kU4bO3sHXj24bObxoMwMSupUDFQkMVS+7Q3CXcYede
         bqaDFBbIk61onIRXWVg3aEsGVW2nLwzRMsi0v5uLQf0SuSq5AtUPFxRfHPVr0oEpFC3Y
         8CvIpCwEOjMuAPgas0dnNIzElxT3Ep3A30L512fU9Wr1b6tI45HY+3tvdnsN5fwGqLpQ
         yktQK5O3AsYwQc5FDjSwBKulWxAfMydnBJMKpgEVfOwlAUlpMYTfnwPYftPvQh9s5Ghh
         qAg5bJ2GQsDLsAy6gRKw3NSGJh+SbpP1J7OwlHg+c65h3eQCWg+VAdUaA2TI7Is08Qtg
         P/6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=h/SOwNGL74fM91xLholiG8RceY2T2Eh4lJjF4BIXA+c=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XaCA6NfCClcUScsCgzrbDFLZfn2NoS9LlIUu3Nrg1bvbant7JcQSooPqkH87yjbsFJ
         9yU9h2TzADRK+P5f3nOgeI5tNIxGJCm+7mvKPFyMjbkdRI8R/i26YajVOePm3g/eG4G6
         LiD9sV499zkPRK47s5Es4V/uQj0z0njG2fokrrzUrvGRcAHABlXg5Kie2nA1qZWxz7mA
         SLJaSEsd5dRzasaSqZqYMCPkRWAYFptLZtCoMcdthVr7BzTSB1aMi4Ht1m0B/WN/hwvh
         mnjKmscl15QEGSb16rCWB4vrqUdVsasoA6ZJOYFx298c6hD7sswVGX5hpOFFO9O5ejcP
         8L1Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id e17-20020ac85991000000b0043af50e9a04si4794772qte.240.2024.04.30.13.32.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Apr 2024 13:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-250-XcpN9O-nMcye1bS4DR2Piw-1; Tue, 30 Apr 2024 16:32:14 -0400
X-MC-Unique: XcpN9O-nMcye1bS4DR2Piw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71B6B1851F64
	for <blinux-list@gapps.redhat.com>; Tue, 30 Apr 2024 20:32:14 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6E1FD40BB4E; Tue, 30 Apr 2024 20:32:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35C1D492BC6
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 20:32:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE1A18943A0
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 20:32:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-358-VzkbdPhLMG-7DsUt0bsocg-1; Tue,
 30 Apr 2024 16:32:11 -0400
X-MC-Unique: VzkbdPhLMG-7DsUt0bsocg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VTX1N0wMxz7sl
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 16:32:08 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VTX1N0kYkzcbc; Tue, 30 Apr 2024 16:32:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VTX1N0grtzcbC
	for <blinux-list@redhat.com>; Tue, 30 Apr 2024 16:32:08 -0400 (EDT)
Date: Tue, 30 Apr 2024 16:32:08 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: latest gentoo and speakup
Message-ID: <8ef2494e-6a12-18fa-f651-3f441d56af91@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

An excellent distro for speakup users to avoid.  Anyone foolish enough to
try will discover the most difficult task with that distribution will be
to get the screen reader working.  I know of three users who got gentoo
installed on much earlier versions and I have decided to never touch this
distro again in this life.  Maybe in one of my next lives if I come out
sighted I might do something with gentoo.
Maybe anaconda-kickstart can install gentoo with speakup working but I'd
not like to bet any money on that.
I suspect pencil whipping happened with accessibility testing of the
latest version if accessibility testing happened at all.
Pencil whipping happens when the kernel is checked for speakup and if
found passes the test.
Real accessibility testing happens when a system is booted up and speakup
is enabled after booting with documented procedures.
Maybe speakup is also enabled during boot with documented procedures as
well.  The number of seconds until the boot prompt comes up on particular
hardware would be part of such documentation for an accessibility tester.
In either case, gentoo would start speaking what comes up on the screen at
least at the root prompt if not before.  Failure on that level and
accessibility test fails.
I spent over a week trying to get gentoo talking and couldn't do it.
Maybe it needs the C.I.A. with some of John Yew's enhanced interrogation
techniques to get that done.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

