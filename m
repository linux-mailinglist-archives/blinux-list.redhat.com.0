Return-Path: <blinux-list+bncBCFJ3VNT5EIBBPEVRDBAMGQE4Y3WBLQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 157C9ACF938
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jun 2025 23:23:10 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a585ad6726sf40915281cf.3
        for <lists+blinux-list@lfdr.de>; Thu, 05 Jun 2025 14:23:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1749158589; cv=pass;
        d=google.com; s=arc-20240605;
        b=PpA2SB3T5mEUhRBuvJMdxhFUf2iA0Dy5grJdZH2QBdpeH/ddCGPj9sFyGtviNM/vF4
         QDZmBnyZgGIp46bqk9tmUbqf/prkAn2z0LXBh+8q0MEcZ5B18QS0coGydm55Bq+49Kz1
         Gw5BYKvXVv/SZnWfgcIK4zRQGXNGHKqnI+r+1Eajvs93ncco6DPAkKVm9T7WPP3AzUwX
         mFeZwq5/CHd6ua+ZlaPdTZnLLhNQd0mAWxwDm9GFFauVBqI4nTM+mVKAhaoYVcTpkGFR
         WpC43Lr7jcQoODuoEfsEa8+kvUkL1DBMQG3qYHW8ys69UVKLp8zHNrEdAZR5bg6hu3KD
         yL3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=euNoiPsItGKn1xic8/KK26tBMCxyXfJyxg6ZSAUQwX8=;
        fh=Mnuvhaj5nfcd5ytEidSofq7cgxoh7ZnkQGoTVP8aflE=;
        b=S+EUv7VBPLqZN+HcZnjO+f+SQMMkGB9+jUkewHNCVTC/QDqUVxBibTvtFJB+2/kNPt
         gJZO29YoY1kCkmZY8A/cZFLFYQ+pXpjP0bdV+dOYupmR5GFxKmpM2F9IebRr+PnK2SdX
         l3Rn6c+mS+jEYu7aJXA5A2TB575TchvzZDj98IIQSZDmjohHuLzf8JHz2YANOE2/l3DC
         dvqqBHVYUOyQ4hAjB/blHdrcumRjH/lwKcj241noW6PPJxLFRRiRUxCjZO5hOugb2w6Y
         7EDdInwkwMg61IlwtyofPX69MYUBDiEp/eK7il2A+wbAWB4it28M3iaxvCqdqGtVxr1T
         lFyQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749158589; x=1749763389;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=euNoiPsItGKn1xic8/KK26tBMCxyXfJyxg6ZSAUQwX8=;
        b=EDzaMbyIQSApkP20Q7VMnsU/yQcgdgz5T0i6e/pG8qYXp4Th9l9cCPxl8cQ+cHNjc5
         wLWewZyboUumhLflw3QStXc1TofQtOZLQQkZ10F96AubGIRa1DdbIpmRWKPTUnySQFSM
         tHqUDC6hB0i1yy9HP9XgUu9MVuZsbAurASFw1R5DgG4V8z6ZYGhyTlvU/D7cRG++/wEc
         Nkh3tj7BOSeUcAhuP3OTv0VFNOzCWWizcfXtTgAtQiLG6wZ1HIQmagFDBE4jlYb8lpXQ
         ttAK4c1n2Re7NfaTmgmksZMDE3Thls5DBIMBSqt71d0WdQHlexsdWYgEGWtWYeLSgF/N
         lESw==
X-Forwarded-Encrypted: i=2; AJvYcCUewIFFZH1Yl2EWXA7nrlRtUGPZSRXQTYqq1hcUsQ70iGQNUlHzh68lO90umckLFJfsp7S43Q==@lfdr.de
X-Gm-Message-State: AOJu0YwtcGfW0pdgUA3eKrpEADhSJ9ONJLSA5iPK3Y3Ea4AsP0bPN0mK
	ZrotNK5xt01cb8VjDB2ybFGTxE3RXXoRHpcMStDmAINRuSt/nBG89gpJz+6D68pil/E=
X-Google-Smtp-Source: AGHT+IER5aqYM1UXOBPPCbc1esNpWTnCkxk1uK88erzu/HqrfVUXClytlu3YeACA/7m7X8dVN/IVTw==
X-Received: by 2002:a05:622a:1147:b0:4a5:8b39:626b with SMTP id d75a77b69052e-4a5b9d3a5f9mr23350091cf.27.1749158588577;
        Thu, 05 Jun 2025 14:23:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZdkUPrHW9ggTObyHz10ziB9MvSJC2I+M8gJGihZi3NaFQ==
Received: by 2002:a05:622a:8e:b0:4a5:acfb:3ebd with SMTP id
 d75a77b69052e-4a5aee84e5dls8709311cf.2.-pod-prod-04-us; Thu, 05 Jun 2025
 14:23:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVHxMpeo/PZrcakxmA2hnqwUDuq016QqGszUp8UwD8kTVOoGzGvXvILE3PhoGn21MEEsde3CLNmZK9JLQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:1143:b0:476:97d3:54f with SMTP id d75a77b69052e-4a5b9a259aamr21645201cf.14.1749158587598;
        Thu, 05 Jun 2025 14:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1749158587; cv=none;
        d=google.com; s=arc-20240605;
        b=jqNd58TzhNYltJ7rzlWylAIn9gmA9Mq+UQxpfWd6ZVTbS9nKVVNC/IsmtP0gghoaoU
         oRPCjX3zoidmsPRcl8SgtL05qh+TwDAhNMm5ZSCwjV//5L0dWL1xdCN5xwWo8yjphLYw
         KH/iLIpqxbSaP1TLpdqfJMZ2xTpplxRzkn5foAa4k2yHDtWr9ZK342E/nDS+pSMdQi2O
         Ig2vCKoVG+8EyyXJQSzhh3QicF4tGp5a9u3Ly6rKzi/W74xgFWu8SbGP1zhDg11flz5E
         vyGB5vGKz2+43STnC+wU01nM6La8i7QOHMNYA1yr/SDcYdiym+GTXfTaSLmlkX8K/Zsd
         zKsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=L0GzPpmgK6cJ+xlxLIr3N7RL1o6L+L2UGDsqvPIgoeo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=iWlEr380mfDd7RZkbLjusClzj0cAViVGDoA0dpmIYWjzRYGjMJqMoBQRDTUcO4r2VY
         L6zZi5dKEkrPork/x5GVIR6zrNRUDCjuv8rH08mp2w0LnYOQ8f094Z2ooosnP65sko43
         COitgP5U8VqUTHwiwQjGkLvlfcQHZDCvuUmEeaviAOZIuWOxlRXHps2f3sBgimYhRCoM
         5x4ASCHeRZtxVML2uZeeBnZaHOLsVo/xZiz7frtDbf2mG/5fg1CpXFRowMwhcS4LDdjV
         bQqwuK1pk/1NGfIwK/c/FQFH3G27wUVmbHmVuKTCFNMZfd3Pk2j+LpxhLb7MQgXVIq59
         tH3w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d25a60f3bdsi34307585a.318.2025.06.05.14.23.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 14:23:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) client-ip=209.85.160.45;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-217-mHxEL1MwOTyW1SADGbtizQ-1; Thu,
 05 Jun 2025 17:23:06 -0400
X-MC-Unique: mHxEL1MwOTyW1SADGbtizQ-1
X-Mimecast-MFC-AGG-ID: mHxEL1MwOTyW1SADGbtizQ_1749158585
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4D8E31800361
	for <blinux-list@gapps.redhat.com>; Thu,  5 Jun 2025 21:23:05 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 395C61954B33; Thu,  5 Jun 2025 21:23:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 362E4195607A
	for <blinux-list@redhat.com>; Thu,  5 Jun 2025 21:23:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C91D1195608C
	for <blinux-list@redhat.com>; Thu,  5 Jun 2025 21:23:04 +0000 (UTC)
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com
 [209.85.160.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-554-hFf_k-5wNACDnXIR9VlKWQ-1; Thu, 05 Jun 2025 17:23:02 -0400
X-MC-Unique: hFf_k-5wNACDnXIR9VlKWQ-1
X-Mimecast-MFC-AGG-ID: hFf_k-5wNACDnXIR9VlKWQ_1749158582
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-2e3e58edab5so586921fac.3
        for <blinux-list@redhat.com>; Thu, 05 Jun 2025 14:23:02 -0700 (PDT)
X-Gm-Gg: ASbGncvDhD2rNskEVeItlEaQ5KD2PALDoOyvsqX7U0/WthRTcdnNW4QGQ3UBuF5kxbk
	b0wVwk17PajpxsYmu81tRC83dTWWiFil/5sd4Dtu5l7NusyiTXzkwpt1VEGo7YiTuLJ19NJ0kQN
	vByArW4mbHm8Ait14i5RDY8dg+wM0tbrzMuLZnNrt0rDu3+Gh/8LKGU172wfrr9lqjNnspFjKA1
	fXmPeBn39QWMQIQtELku7g6qxut8fz5lZnkLPQH4YF+UEuhqR/1tcn7pu2lcUapwWXYsxoVXmcB
	erSTKJkvCVvq0tWf9ckJ05JdH0tbxkNEhLSEnd25zD7YglhcLY9diFEr5H3eifU5PCgQVHOMWGO
	KUHkSoW7H8gvpYPNfcg==
X-Received: by 2002:a05:6870:17aa:b0:2d5:1232:b081 with SMTP id 586e51a60fabf-2ea0103101amr808361fac.29.1749158581736;
        Thu, 05 Jun 2025 14:23:01 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d12d:d0a4:5188:a40f:533:ef81])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ea072e5ae4sm42254fac.32.2025.06.05.14.23.01
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Jun 2025 14:23:01 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: removing a synth from arch system
Message-Id: <E61919EA-830A-4431-8479-2491E74661D7@gmail.com>
Date: Thu, 5 Jun 2025 16:22:50 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: oMhfg-IwzVly702ufVyo8QUmbO2ivTXChnXv1paxsnw_1749158582
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dc5QW8DAldB8af8YQqx7Yos7thAR3LFgmGNRi3TQh7c_1749158585
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.160.45 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

Someone sent to me a voice that I now want to remove from an arch system.
The voice was added by unarchiving it on to my home directory.
Somehow it became the default with fenrir and with orca.
I corrected orca, and fenrir, butt at times this synth can speak some.
How may I review speech dispatcher and maybe jeneric to make sure this unwanted synth is not listed, before I delete the directory of it from my home folder?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

