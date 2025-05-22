Return-Path: <blinux-list+bncBDGI3AUYYYCBBS4YXLAQMGQEDKSJMDQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 268EBAC0275
	for <lists+blinux-list@lfdr.de>; Thu, 22 May 2025 04:30:38 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47686947566sf103782341cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 21 May 2025 19:30:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1747881037; cv=pass;
        d=google.com; s=arc-20240605;
        b=Pwj+G9sO8unw/hfqToq99OmX2pnInA0elPTIlZVgPhD2QEaI0LvoerUQu27rkBzYOM
         wjY5s38ng9kNAvp6sOjSTn5CeSevdgtarxtwmYo6LRtdAlhPEZFLIaDLSn/jT2Y6q1hJ
         cKupgyjb7Rx30N2g2/uWcX3xzC6QiEKQ/ubYxd8x6hj0f5dWuFnOjoKdAMbKJBxdOaG9
         VurDSkYvF+90bg6RkjADUvBLruMFslIDm2PyRBE02NFxVQxYl3xoGLJEqV4q8vPm+aKp
         WVjwD06h0kmDNFs2GdB5giejVZiSiDjoC4liSmDYc9SSgj850BE2aYOc6C1Ov12hIBkH
         Wfnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=chXqFVle4OEi7h1VpAQVAf9+o7TrTWZq9qvE7zGAG2U=;
        fh=0Dtyjs28bjWsaZCpnzuoXHxHEU6mU7RDPP9S45WMDrc=;
        b=U063lIKkGmT9IRppNjA4m36tNdkgQ0CLKoJt12vhM/uiDHHPmHA2zCIKz6PWDT5LJo
         r+71nRE8RXP7fVXyf2Cb3qZTAveMJws0eTs0sPNSZCd/SdCy0YipB0UeSWDJPX1IuE1W
         a/HFRHPCInwTTdA8oc4Bd0reDgcmfFQwzAzqbqZIUjb9WGqu+wAavj/4GizEpx0zIRvA
         mO1le7ZWzIQxcZVda1LBhrTusjjzO3kD0COBLb9j5t1AHIZmNdy1HdbWkVQsDdxJU2T0
         1QBz7HDRa4WlOeB2L5er6fM+JqeHZT1Lf+Q/eVKtZhKNCiOfKh67P1rL/lxiFvC3loZm
         NcPQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747881037; x=1748485837;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=chXqFVle4OEi7h1VpAQVAf9+o7TrTWZq9qvE7zGAG2U=;
        b=BHLU7JWiNjj1e+9JIYCUI1gYzM5O2JPdMTolKOvmEuM95CLD07M6so2updjChwUhdS
         uEeF22wvAaJ/0EsZcSkxx5rORxWUEPabMJkaZkx2jGBQ8IQ98IbSSiImd5PxS25IU7JD
         V3p6NzSdytQqrFHx9ajV+2+3GdKvwgXzXJtfQbsuJCdNLO97QfJm3+T/zBQixCTFJ/xz
         jb826Za70o//uDa8hpjOWTnLjGpQpxmupKvPF3NmdCmghVOzyvK/bC6/KFQSEdydyahe
         eaen78nccJlIGGggvRkexcIw+bcyLgsMAq42eoZ/Vj2sQJ0+Z/8EzW80hgZrts3NZtVh
         RxNQ==
X-Forwarded-Encrypted: i=2; AJvYcCU7mGI1og0h8mrY0LN6nTl3AFTlvRJ4jZp5fqKZtfFF1TrAXgaXr/m6skM6EBHFtvFicmHrvA==@lfdr.de
X-Gm-Message-State: AOJu0YzidAlW9QJz2lEFbhcZ8TZjh7GhUF1TxS8LJliLEabwvthwSWbm
	xfcgc3Yi5xl0G0yWACVfSFTky5nC2VTaqRXl37djYjpQn8lpKp2KLPlWIkZaoqVj0hA=
X-Google-Smtp-Source: AGHT+IGYk8hUWE6Qxz6eqTh1q78IClRcy9HqWhefoq/h3xfjGJuZxwGplda7hw+NaFuB/L/eLPE4bg==
X-Received: by 2002:a05:622a:2290:b0:494:a148:b487 with SMTP id d75a77b69052e-494ae324c35mr348991011cf.8.1747881036388;
        Wed, 21 May 2025 19:30:36 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBEfSE/l3SeA2IgrfHthSkIKNEhR/LeWm5k35K3mu3KYRw==
Received: by 2002:ac8:7201:0:b0:477:c8a:e60b with SMTP id d75a77b69052e-494a13f3167ls73891571cf.1.-pod-prod-02-us;
 Wed, 21 May 2025 19:30:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUmstKTyBJ/PqpYZjfAhdS0XhWbtFTngCPfmMp1SXTvTfP3zUPXF6o0/jKLbCoBRaEjvKH354gvE/yOGQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:430b:b0:7c9:55b2:c3a with SMTP id af79cd13be357-7cd4670815amr3106639785a.11.1747881035293;
        Wed, 21 May 2025 19:30:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1747881035; cv=none;
        d=google.com; s=arc-20240605;
        b=FTaGJbLCk6uzBm2kXSmxLtFBlk23oztj1IkjkxD69lCYEMs0L5RUPb18pa+Po8t1/g
         CLyg2+6lfSPgUr4ObTBnKWRCbwolMieziFaJuV9mY/hPEZoL8JJzFkAgXk22FmqTdoYM
         +znkPWdN5osYFW+Pj4geUToSKUx5HDjsYp6Gi86J1OUZbAUmOG+rcqBq7HtBHzrefDrO
         0EuZkD73ULIH8q4GfP0A/tJtp9myif69J4auaYJE7WJ0Q7M+wT51+QydWLJoc2PeB3W/
         diw15vD4Hr9Xb5umx+VjuI4VDWPbEidPYeNG465GZO/QQwH/k9MRC1DJ7w3WfZwVsqGL
         DhVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=Se7mGWzTv7SOIGFcSM9BB4cTIWRJGDSybF731cjMWbw=;
        fh=a1rY+zZLs6MD6ZmvpXBNYyKiObPeFl090Gm1dQ/SnN4=;
        b=TYGQuE7CqFzuZMvFD2AhpgDJZnWL0c+bbNVl2gIMLOf9kD2X+U0aRzbAdnMphVQ655
         iut6RkohltqY0HH2WVNiBCs+ux7NECXxnkFPGGZdxwflkai4lKg1gtU3NeShZwXjepy/
         L5Tk7xmvJVrXpZlCIhQ5Dylvi+XGtCVfgI/ueNtmVhr/olyCy0XGEcvvL2jWYo4jp9hd
         oK1yfLuF8iOwNvf2sJENqlV+7YI4oU6z2Etc1Wmbl/aSJ2PWlUQV61Zp3/LqWwl32el8
         +0d/xJExMgjkOECJbHl1fZSdozL5dEbxbUsvQMbjg7CG3GXN9XC+ENlW/6aYOK0EriIM
         MtTQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6f8b09c6c31si142735906d6.416.2025.05.21.19.30.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 19:30:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.75 as permitted sender) client-ip=166.84.1.75;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-499-fvxmjyxlMKWhAogRTFs3Gw-1; Wed,
 21 May 2025 22:30:33 -0400
X-MC-Unique: fvxmjyxlMKWhAogRTFs3Gw-1
X-Mimecast-MFC-AGG-ID: fvxmjyxlMKWhAogRTFs3Gw_1747881033
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1523D1800875
	for <blinux-list@gapps.redhat.com>; Thu, 22 May 2025 02:30:33 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 10D43180087A; Thu, 22 May 2025 02:30:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0DFC6180035C
	for <blinux-list@redhat.com>; Thu, 22 May 2025 02:30:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9ECF21800256
	for <blinux-list@redhat.com>; Thu, 22 May 2025 02:30:32 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-240-YMfneOsRPBCJdQJF6mNW2w-1; Wed,
 21 May 2025 22:30:30 -0400
X-MC-Unique: YMfneOsRPBCJdQJF6mNW2w-1
X-Mimecast-MFC-AGG-ID: YMfneOsRPBCJdQJF6mNW2w_1747881030
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (1024 bits) server-digest SHA256)
	(No client certificate requested)
	by l2mail1.panix.com (Postfix) with ESMTPS id 4b2sJH2ZYkzDPL
	for <blinux-list@redhat.com>; Wed, 21 May 2025 22:12:47 -0400 (EDT)
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4b2sJG3SNYz4XlC;
	Wed, 21 May 2025 22:12:46 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4b2sJG39zdzfYm; Wed, 21 May 2025 22:12:46 -0400 (EDT)
Date: Wed, 21 May 2025 22:12:46 -0400
From: Rudy Vener <salt@panix.com>
To: slint@freelists.org,
	Linux for blind general discussion <blinux-list@redhat.com>
Subject: command line test to determine if speakup voice is turned on or off
Message-ID: <aC6IHvmmJdVxVY-h@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: u7vIbbgsGOjyuZa766GOzP7w58haZTbfVH1B1TnZimg_1747881030
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qDI_Gv6k0GAXewYi43pzGMUKmKq7sFYu753MAZ7oHac_1747881033
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.75 as permitted sender) smtp.mailfrom=salt@panix.com
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

Is there such a test? I've written a script that lets me toggle the
speakup on/off command by injecting the keypresses   using the dotool command.
However this only toggles speakup on and off.
It would be helpful to test whether or not speakup is already on or off.

Thanks for any wisdom on how to do this.

-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Planet Pluto Returns! 
https://limerickdude.substack.com/p/planet-pluto-returns
Website: http://www.rudyvener.com




-- 
Rudy Vener

An audio release of Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - Planet Pluto Returns!  https://limerickdude.substack.com/p/planet-pluto-returns
Website: http://www.rudyvener.com



To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

