Return-Path: <blinux-list+bncBCVPTHE7K4IP55VCXMDBUBBTQNMV4@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A509FA8EB
	for <lists+blinux-list@lfdr.de>; Mon, 23 Dec 2024 02:23:11 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467ae19e34bsf120734661cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 17:23:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734916990; cv=pass;
        d=google.com; s=arc-20240605;
        b=TvqG97zI0IU+UoUzBo6vH+k5UJwdMOvUCtJWvwP3E/T5notTH3YUeXl9H9nJ6u4uh9
         Rz9mUOsTzFgBsPhd25s6jIBitA2SyZNh5WoHuXyTcE9Q+LybyyprEhafN6TgSLLRKdXZ
         JizbN64m66boDQxExxQUs6+6Ev/OtR+cyNTE4BK1ZBmGCaK93qh858Yq/hTeKmJvAu+L
         ESljOhTMKMuJZib4806qPycsk9QBD1Tii68PNXeWBImBvqjqwCU9Qq3rwaQHUyB9OVdF
         OodIsC2zTbX7Dp5axSlJU2DBEqBZ1jQKF4WpHnAUbfv3TV+Djy0OLCA2iMvzsNFSx8ie
         REIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=6dY1bkPV7y0iTEqAoGgaX+++QcEhje5K2ioedLJ4Q34=;
        fh=p/gzeMVsjaKtIF33LMYEs8HytlMrXQOD+pc7eU0AFdc=;
        b=OC6eoz8YcHL2wlobIILB2+5mCNijepZvtQQBwcg0kc6Eq0ptVZRGxdnxDb3nitgWeI
         j19e0MY0P+PH60S7CczOQ/g+ENSpkkz9Jbe12XOMmnF6kXXy7iCZxhVItCuLiuPzeC2/
         ZSWUtzmG2DqU09JMCkQzjBpS/zjOdBZjIho1luxIu1CISU6Uf0qG7jehRRc5LdRsuG2c
         1T64msqPkafZ9oIDFYDAfh4ST+VLA4fgJFe4dfxtKVCLfnFsnW9/gl05q4ii8CXo5c0E
         t/duNVOZzhMLTSLh9oCNkKQKfpjC9io8NWRgMBHBRwxs9xx559D1oP1r62pyHw9Wb0Qh
         CGYw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734916990; x=1735521790;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6dY1bkPV7y0iTEqAoGgaX+++QcEhje5K2ioedLJ4Q34=;
        b=jrD4BAsnxc/1V7yWRGRMyIKv1dPmyBQjGb0lWq9Lwcu7QQDkpqPvLpSJuwcFXChKNg
         C+WHR5ny0VoBeIzQRMrQ4nn2R+xSnRWdfrgdqqTpR3VNmKGCQE/uHGfNQvfRbcIbYYQR
         swvpGcpm9U/cOtXmwLeIOZLsfN0xK3eb0afNhVSTPFqqJXAYmESgq0SapwN2t1pmVxV8
         sj47xZ9c1fdCOaduq8ibU/HS/kTM5Gy0LO0vY0HA/Zk9ah1Hr2Xv7LZhPlc01TBgzoU5
         DvbKDQNEMazOZdTqBcq/t1ootIEGcjcg58VWq7dIhlGmSfk4t7EFIa7nvE46FXp6BgMB
         XRcA==
X-Forwarded-Encrypted: i=2; AJvYcCVGVIh70yUKyU9zfejVhFXl9jhgxgMv8qNFsMMZQJxVEQQYIpiraTBmDRinHZPXU6aOEFf/sw==@lfdr.de
X-Gm-Message-State: AOJu0YyEoMzXtvhOVlJtAA5zLKbYSHn/WZoxTbsrXT8UGv1Bfl7jt2tH
	1B6M0+zf4+Cd5OfkqrdAEHigXP3d3AZ49Di8QyRLG6vJEMuoXRMUunEIIRCnjJg=
X-Google-Smtp-Source: AGHT+IHxQXGCcVI2zxT3N8O9VwF9ALeoQuAjkBRWcY3ZvEL8H/ywzvwIrIfnSTxK52cegAAXdYQ3dQ==
X-Received: by 2002:ac8:5992:0:b0:467:6833:e315 with SMTP id d75a77b69052e-46a4a8dcd54mr181907131cf.20.1734916990322;
        Sun, 22 Dec 2024 17:23:10 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:578b:0:b0:467:5016:57f9 with SMTP id d75a77b69052e-46a3b059662ls83936611cf.0.-pod-prod-04-us;
 Sun, 22 Dec 2024 17:23:09 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX0xzq2FWQeAZVMwhq7oJZjliLAA2q7pY4J5vCpe3DgwMgQ43Yzc6BiecZWuuCUefWY51Gjzhh56kfIUA==@gapps.redhat.com
X-Received: by 2002:a05:622a:1a0a:b0:460:ac3e:cf6 with SMTP id d75a77b69052e-46a4a9a4383mr193297351cf.53.1734916989309;
        Sun, 22 Dec 2024 17:23:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734916989; cv=none;
        d=google.com; s=arc-20240605;
        b=Xo24JrdpGDqQT72L+BjU6ruBZTtDNCfonn1sPQWgrCglvnGO9JAJs8Xq+h1Ov+upH2
         Ijq/oqLhUvmV8HFyXxPGjFgu8NmH4/sH1RndWBEqUcJP16oSlHMP0a9R0FPt8FzT5En1
         Qx52brkVEujNops4ddmawGUBC4Dg7oOJv47DmwIaMN2+UFBHo5rdP8e51REfxTYOtNkH
         0yqY2XiHHpV8A4pGp9QXxPK7REafxuL2ZbGHLhT944jowU661aqQb+rnVNVGAZ4ZzNpr
         HW21Ji3ne7istKsIai8AT4hMxotIuxqBXTgYl2Z/p5qH/Anyp+e5E0WVqd6HI/x8JzJr
         u5Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=6dY1bkPV7y0iTEqAoGgaX+++QcEhje5K2ioedLJ4Q34=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=FbQ7z0XEZtZ1Y+lXUQi8flA/d2n/BolKt3ugTh8hrjNTtJhNDQJ0hN735cts0R5b6g
         F7su0cOQcSSixIF0AkJu3rfGvD36S5uDLEKeDyxpbzsFGvOi0JIX6lx6rLbovgAMapFn
         vpCueGOeKBtB8seAuxGN9yrhEA93p2kPP6DaYMxHppF836IU37RgtZ78liQcCzqcaBdW
         L4vPgzBp3n/R+6+vLY1hyfkDAcOqvVcXWd5QXxHv9Br+uzko+SG8Vg6vQKMkPcyFxvgM
         8R2iYSk7XxtjX6KpjRKjitcanf3KzFCIinzu3GoguIQf88ogzqipo8SWaiLROljpEJhI
         xiMA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3e6abc01si107059731cf.156.2024.12.22.17.23.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 17:23:09 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-631-vlUToDKqM2Otji_ZjEMCbQ-1; Sun,
 22 Dec 2024 20:23:07 -0500
X-MC-Unique: vlUToDKqM2Otji_ZjEMCbQ-1
X-Mimecast-MFC-AGG-ID: vlUToDKqM2Otji_ZjEMCbQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B7C9C1956095
	for <blinux-list@gapps.redhat.com>; Mon, 23 Dec 2024 01:23:06 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B2F7B19560AD; Mon, 23 Dec 2024 01:23:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B080719560AA
	for <blinux-list@redhat.com>; Mon, 23 Dec 2024 01:23:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 14D7919560B1
	for <blinux-list@redhat.com>; Mon, 23 Dec 2024 01:23:06 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-482-izr0zLfgNVWR-tjzmVhA5A-1;
 Sun, 22 Dec 2024 20:23:02 -0500
X-MC-Unique: izr0zLfgNVWR-tjzmVhA5A-1
X-Mimecast-MFC-AGG-ID: izr0zLfgNVWR-tjzmVhA5A
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 5CBFC40508;
	Sun, 22 Dec 2024 20:23:01 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 244F4100BB8; Sun, 22 Dec 2024 20:23:01 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 2296910008B;
	Sun, 22 Dec 2024 20:23:01 -0500 (EST)
Date: Sun, 22 Dec 2024 20:23:01 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: blinux-list@redhat.com
Subject: re: youtube issues
In-Reply-To: <Z2hB3hnS-T8uW2DC@panix.com>
Message-ID: <Pine.LNX.4.64.2412222022070.996299@users.shellworld.net>
References: <Z2hB3hnS-T8uW2DC@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: wn_4RcC2iR6eRpIAjE-DjPlFSHATB1VV22BRqaBzTZw_1734916981
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AgephMdvxEHtsWGr5Ody5fcQ39Pjwh-TOGN6n_v9Gw8_1734916986
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

May I ask the original problem?
That post did not reach me that I can find..or when was it asked?
Karen



On Sun, 22 Dec 2024, Jude DaShiell wrote:

> for those using debian or ubuntu if you want pipe-viewer this is a bit more complex but does work if you run the following 4 commands:
>
> bash -ci "$(wget -qO - 'https://shlink.makedeb.org/install')"
> git clone 'https://mpr.makedeb.org/pipe-viewer'
> cd pipe-viewer
> makedeb -si
> That installs the makedeb repository and makes and installs pipe-viewer for you.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

