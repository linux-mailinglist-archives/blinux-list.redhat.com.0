Return-Path: <blinux-list+bncBDYPVTOXSQEBBV7XRSVQMGQE4AOJMBI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D047F9298
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 13:36:41 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-421acfe16f6sf39239441cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 04:36:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701002200; cv=pass;
        d=google.com; s=arc-20160816;
        b=qFJsaZeDNV8hAdfpCtev4fZ2px1wJ9Wbt5QIRTc0B542TJ/BhnUJf/mlMDlFl7u+Ds
         fgaVDvMQp61+dAibv7siWAWa264JlcEGUng4lr+iQ+6XVX7CTDC1OL2Tc0VBD2COTaZY
         Ao7Fd/P+DcYgT6r1oW++wO38q+5Lcm8zgEwXK62hvt5c9GRS3Ji02K8zmjFMFKYaaViV
         SXmb8q3vaogtU2rkTs4Cg2wNyJK0N6onvPKoHY58aMp/PSQTJRMvysSwWPp25uTUdwNd
         unmizZApQuOKzM21fL76q+IjuJArF4iNBkXkVo3m/d6HHGyZHUvLSgXa7hgCW58u4C5R
         /q/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=5h+JTM7bFIGyXtv9tkmWicXHa9v+66JxUJizecCNBUM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=qG27jL7gFPHygpmF7ODAkGNXcHCo4scOEZ0k2yKhPiOEom90J83gK3gcKDq1qZ1Qzf
         CRV/ZDyUaEuV8aefW0/Whr/HDPiRu4Hv9nhKNVlKSo1Bz4LP1o9yobhnOF7N2d5C9trx
         ywRoAZx4ilK39jSFNHVa/ACDnBQuqRlrEkhCDOX43MQTDu6CLwSo/njxBTTS2zYG52o5
         5X9ySjb8rUpNqVHIHRPSKIihzwP1vlfZzhyTOmvYoMFKBhWl9KZKZzp/u8EI9lg/aOKk
         hVP1+fXwcvb9FbosLQwQN/nnsqOL9OGF1nLHD8C+w+tP62M1YJm+2RFPCYzeRwPJrDT0
         jveg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701002200; x=1701607000;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5h+JTM7bFIGyXtv9tkmWicXHa9v+66JxUJizecCNBUM=;
        b=b112XvLn2G97hCN2xP6Z7dzBNPHd+OOakVaWbAb2FyIUJp8IgGvXExzt1FUmT9XQxD
         /oh4i6mOSN3bDjzBME/77xXck/YwF2e6E+HPOddvv4lCVIJYWI6mu2X/hvcatKq7iMve
         JrYY2QDlIu+9Ix+HggsJKl+AsmxpYB4Ydw/KED3bd78Z+T5xgC59v23QP1ehcUhnLUmV
         FqeehFurqKKM18jlDEFFC8kRvJuk77QMzT0j8cnAgFbyesmw++Y258HjHxRMm8Y0CQ0v
         X+VffCWE0ub0td+U4OwFbDmQUoAlB4dd4p2In3v3tTHS00tS8yc2T3NupSqYV5tmQrtm
         ACKA==
X-Gm-Message-State: AOJu0YzbpeEXUnK/wAOTt+lvbaWvz9wdNX9HnEjQPAwUzPTEHTJN+G6U
	55T6ojvVe4wl+E2B7V2u7+2qhw==
X-Google-Smtp-Source: AGHT+IHr/o+1k7UyF3wg3Oh0a8zJEf31sLbu2OIFLzB3f4FMQxkoP9/f3tGmWPc1TmqsV3hYUc4MGg==
X-Received: by 2002:ac8:4dc7:0:b0:423:a2b3:49ba with SMTP id g7-20020ac84dc7000000b00423a2b349bamr5317809qtw.56.1701002199809;
        Sun, 26 Nov 2023 04:36:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:11c4:b0:423:84c3:cf91 with SMTP id
 n4-20020a05622a11c400b0042384c3cf91ls517855qtk.2.-pod-prod-02-us; Sun, 26 Nov
 2023 04:36:39 -0800 (PST)
X-Received: by 2002:ac8:59cc:0:b0:423:7e2c:2549 with SMTP id f12-20020ac859cc000000b004237e2c2549mr12846383qtf.0.1701002198976;
        Sun, 26 Nov 2023 04:36:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701002198; cv=none;
        d=google.com; s=arc-20160816;
        b=EfMFSAlQl3eGYtRMOm0yzpraGsM5ULJMdOwA5CEJSeYYfMdooQGb3Jh1d+dvqpjq5Q
         6mBwYpEZ4Dx+PlMJXEA7WMISNtnuJ409CoQIhmX5WjVmmzn3wZFBUx/pAErMAhIJv3iy
         UauUbrN5rsy0Hx342xrUi9sttoRg6PqpiNFN0KA3dFP9Ah6PYEiFwD2vAVLPNjY9VcTd
         U2EkhREYlEWohMN89eI+GMXvTUudvA3nyXLXuhjRfWV9cHqT7lF7Rlcuwyew3iejsmLH
         qgSXkNWdmOFkuSpbgk8eMzQiViuB0q3drkBY3clvlgzS8OeiyjYtur4356ZBu0+XPTOC
         w7Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=+AKefBASZB3+pT1yZGnU/8PtqE1WJ9YIAsxzWjDxcAI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ren/xziyY9466vTbXkJrjW65H208xte9OZnpnT6FpENYcP4lBlTeO3blFSOsc05kj/
         IGHAUftRQKzVOC6lVNesyLAkX7P3PQtd8vYcXQTEJV4ObTOYzM5pHBZKaFcUEUCqvXiz
         PnudOu+HnY02Q6gO5HGg8ApHMeKYJZpxv/tAe6JqQ6WXErPbIABIgQEPDUp1zJmo1Kvb
         Dn7xYWj9VfmSYdn7HdcvSOn3MFKRzPEFt3KXoWfXH7F+wahHsY5S6Q53aF54Ed/csebh
         LLyajJHl7sGCp+PTu498Xy/Nwni74/JrBszfvVZ9cHVHp0I+5jzWJGiQDJvS5mv1YRyR
         OlZw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id x2-20020ac87a82000000b0042391b66576si5741020qtr.139.2023.11.26.04.36.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 04:36:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-14-EDvS9jXXP5aT27sSFbrbGw-1; Sun, 26 Nov 2023 07:36:37 -0500
X-MC-Unique: EDvS9jXXP5aT27sSFbrbGw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 627A0811001
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 12:36:37 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5E8A5112130A; Sun, 26 Nov 2023 12:36:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 559391121307
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 12:36:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 394EF811E7E
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 12:36:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-214-tD-JdFYKNkOvpp18QwYTJA-1; Sun,
 26 Nov 2023 07:36:35 -0500
X-MC-Unique: tD-JdFYKNkOvpp18QwYTJA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SdSrg0xyDz1CDp
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 07:36:35 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SdSrg0XJpzcbc; Sun, 26 Nov 2023 07:36:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SdSrg0PylzcbC
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 07:36:35 -0500 (EST)
Date: Sun, 26 Nov 2023 07:36:35 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: vlcrc file needed
Message-ID: <433e1464-0c97-bd74-32bf-06ab48664fdf@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

What's not on that videolan website is instructions for command line users
giving format of vlcrc and valid items that can go in that vlcrc file.
I installed mpv and vlc on archlinux and have mpv working since it's
better documented but not the case with vlc.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

