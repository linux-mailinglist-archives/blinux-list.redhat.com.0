Return-Path: <blinux-list+bncBCVPTHE7K4IIZR47VMDBUBBO7LKB6@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFC07FE5F3
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 02:21:18 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41e1d05a5d7sf4451731cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 17:21:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701307277; x=1701912077;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9PKwRsEi6WYQ2LC4eO/QNdTE+zwvldrA6h4whRLvRuA=;
        b=KgRK5+kNMZvOD6czpVG6k0JmEtG+fPGb+M1uC0wFJuv119A4UG8byons19CRvGORvT
         UazfxK3BSKB2a6YvDZ4nlSeNs7dpYEeFVY+qCkYh7SPd+a+7Epp5EDRurXb2HGiajhMU
         TsL/oW3TGkCnZELZnktgkXyWo7mwF0uNC5gVwiylwnlBczVAPrEUjRyzWdM72+ei4ur9
         QSKoogURnYnEGiKFg4yTyhCzJR7Le8X/GqPT9eWN2mIBhLk2yknYzmWDxZ4B+76XXFXL
         c9Iwyj9KwQW9v3GgfXVto1Hw5Nm5OcxGMkkgtrN8fNWtDGjS2RItIr3j3LGAxWZlJWkE
         2Y8w==
X-Gm-Message-State: AOJu0YwXZOFfR+INdHxL72XZjbin/uY/TK/+dXG4s4I6yoD8RDZSJ5Ie
	YkpARBBXpnQk1zFYGa+8xAkuAw==
X-Google-Smtp-Source: AGHT+IHI0zujlz7e77xKUDiRLaZYJU21s3TkhMZ6B5KWczT3zwpQ0YVfZfM+LVZnTETS+a77Oy5PHQ==
X-Received: by 2002:a05:622a:1c7:b0:423:7f57:8276 with SMTP id t7-20020a05622a01c700b004237f578276mr20789277qtw.65.1701307276941;
        Wed, 29 Nov 2023 17:21:16 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d01:0:b0:423:72b2:6135 with SMTP id f1-20020ac85d01000000b0042372b26135ls511505qtx.1.-pod-prod-08-us;
 Wed, 29 Nov 2023 17:21:16 -0800 (PST)
X-Received: by 2002:a05:620a:628d:b0:77d:6181:771c with SMTP id ov13-20020a05620a628d00b0077d6181771cmr21080383qkn.27.1701307275858;
        Wed, 29 Nov 2023 17:21:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701307275; cv=none;
        d=google.com; s=arc-20160816;
        b=ODULVvdrKoO2RgdMUCnYCHfFpUeFxP2LBgXXlVVCoKhqITHlVmewRtXIOBfSqTM4Yo
         SmUv7RhTy+lM7uQBlijXmum0pj1iVIt0uvhYbd2Ft5hZOaGN/otOuniU9yPjxcjswnl7
         lKAMUddnywDFpfUVUZr2V2IG5qqRvDwU4iHWBDoxE6CaPy3J5CWQJtGcSyPvSGu2Ep1i
         5swDElhtZRZEqI5+ADhPZUMjG/wP359NElH3TtWAn7QkCqTYaK/MLl3kJzGvHq2APvic
         QYY0ciD/Aj/i08UOcFtoeRuuVePiaWcIKmauxDlhDXiB52mqT5DPT4G2xYWJhnNsm0jZ
         kIoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=9PKwRsEi6WYQ2LC4eO/QNdTE+zwvldrA6h4whRLvRuA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=H1SQHKJqEgaekeOPymzHIfIV7fFG+EjrDwTSW7UYr2ErkqMra6d7luVt9s+j8UeOb6
         UcD7DAaUk9db3mPc7BefqwQ1Awia4I+3/WdeBfbnt6H7BntwgcrDU0m720nU7g6xWwOG
         lMgv7t6fxXxlj9qsAZpR+abYI+VoPREzf8F+K0dWsk6tx0xHnIDaJ6c3WyBVdf5ySClc
         xLMwDwMC+dXID54wbGc4WCUlkWgdPEITM+ETGUQzYoOjgJK9cuL8B3ZJIPe9D03iF6jg
         KlRZNlcjWFIAauKSAkKJEtBxTH+6NvNRjPI9VP+xI4AO+f24N68z/HSmTPtK32Jq3rGH
         bSfw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id j17-20020ae9c211000000b0077d783c7ee9si44087qkg.193.2023.11.29.17.21.15
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 17:21:15 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-606-PaxmrV-HPIi_Eur0dVbq5w-1; Wed,
 29 Nov 2023 20:21:14 -0500
X-MC-Unique: PaxmrV-HPIi_Eur0dVbq5w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F28DA380008A
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 01:21:13 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EFAC6502E; Thu, 30 Nov 2023 01:21:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E83CB502A
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 01:21:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCF7C811E7D
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 01:21:13 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-172-ktuBmABbO1K-GTpAjJBPXQ-1; Wed,
 29 Nov 2023 20:21:11 -0500
X-MC-Unique: ktuBmABbO1K-GTpAjJBPXQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 24DC544FC7
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 20:21:11 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id E11541001B8; Wed, 29 Nov 2023 20:21:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id E0ABB1001AA
	for <blinux-list@redhat.com>; Wed, 29 Nov 2023 20:21:10 -0500 (EST)
Date: Wed, 29 Nov 2023 20:21:10 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: quick links are numbered question?
Message-ID: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

Hi folks,
for those using links the chain, there is a command line option that turns 
on  links are numbered.
Can someone remind me of the keystroke?
Thanks,
Karen


