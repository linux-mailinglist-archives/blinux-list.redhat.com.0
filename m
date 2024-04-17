Return-Path: <blinux-list+bncBC3NDNGRUAMRBYFH7WYAMGQEOPCVL5I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DAE8A7B7D
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 06:45:22 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43479131062sf54856811cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 21:45:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713329121; cv=pass;
        d=google.com; s=arc-20160816;
        b=bRkpsEYjLRULwm2yHf/gUO24gtDG3RDT1ZKU+nbNJV+SHRU3WArsp/zmoUCgCbWSSJ
         8AoCTMYaAOjUVv/dBW9c1e1Z/TBg7IjH91OapZUjff3zae/XAMCoDwSzEuFmQxgMxAiV
         mJE2atFDFDIjogN1QzQFSsDTUu0xhmn+v/QxxzquryfhCtv970B2WE1QG43Mvobl6/Jg
         2CW9J+7ksktaZ/bamkGp7e9KfYUZswDpjjw+jFEuD/KFMm5YIf93T1aWNxLnDAxop5CK
         NF662jfpKPuqWChV8EgzXw7kbmCjXrZuaaY2kxUBWzZE08nu/UyNbJaZ2/n3rYuHM+1b
         uOtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=fdIllUdPgfCYhpnZ1+Ds/f6cgVgWBY8zOLsr9ATXXcI=;
        fh=AkUUr5EzwF4WJeomth1MERjXuWYf52zlq7+9iGOofzM=;
        b=Ff7NA1yDiLkKr+vgRu0JtS1yWbvRTBVtqouA58XtLHpct/NlKqxRW8H/wKgO9qVDt6
         4ZezhhPW56IfsQ+nL/WmN1W6dpMkXYyFotWyYlVVNJVKECQwAMnKyl+dN/kLwX9QVgnT
         cldjcsVDhdfDpoq4V9gO57WVRxh4p4BroCoF0NGqrevjoJL/sVSJdIPpu1scCtxhENUs
         IGuuJudrzkraSEh85ROuHdL6OoqIpRK84cYLKQ4ycFmCJjvHYgGVK9k2IBT9jyLyeK2a
         Fv2X+1hGfyzdO82hGVj19om3EBIh1Aqe0jJ/hHqLI+sItD74r2dmL3JlHdtVPU/zYQWq
         HMdg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713329121; x=1713933921;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fdIllUdPgfCYhpnZ1+Ds/f6cgVgWBY8zOLsr9ATXXcI=;
        b=YLQkurLFJmllztFhozhRBGgUYnIl7IRAq2bcTdXnWeiCx86LQbCVm+H+ZHtQnBDnEU
         ieHjX0TYFNs3eInhXIVa14BC8CiyHiDIFzJrYdquCVISUBAL/jRigB7Xu8QTmohbKZs0
         qOE6ddThkmdbG8YtCj/jYRkhgJfTNlNdy5PMBvjEklt8aMu98D3yoVBNNQEDQvdPE+Fk
         eefOsFg4toY7hw9BJy3YdirctEXvXFcayuTOautAFdsm2npON/mm9hmGjNYPwWl7BjY8
         fFi3YEQQStQpMBLWBG4yDgcDTrr3N73uxP9956sfU6uMjKm7Z8SW6uJQb5d8gnMBn0PN
         rmuw==
X-Forwarded-Encrypted: i=2; AJvYcCVxOxX9YcnWuAeVDKqR+cwtwmPdrKz4scqUy7O80qwS5PD/+CH6pvXIomFJdiJ0fO0hQKGJ/WORYVouJDSlBSnRG9pb7zjl8Udp
X-Gm-Message-State: AOJu0YxPK9kBghzj0/c8GEO5UG+6196lL2Fqx3Qsh4EgtkmM36dj6Rtq
	P5ZoE5Iozs2yyGbqCd3xHLUr77ZT4443jPzRtjbg4qNOH0XAMKYUuDaUVK7/gjY=
X-Google-Smtp-Source: AGHT+IH5+0U7epm3VAaNH3dXHyN92Ikru576EiSMVlW7Yvi5s+7FOBVSw0eSZujYak1V3G1TxefraQ==
X-Received: by 2002:a05:622a:308:b0:434:bc33:a0fd with SMTP id q8-20020a05622a030800b00434bc33a0fdmr18888843qtw.13.1713329121277;
        Tue, 16 Apr 2024 21:45:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d50:0:b0:437:c1:b5a4 with SMTP id g16-20020ac85d50000000b0043700c1b5a4ls4533310qtx.0.-pod-prod-02-us;
 Tue, 16 Apr 2024 21:45:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXVEg8GqPWftizX6/1kRkyAv05FsM9VBXjHIrwhiJRGHRhmIPt53WKRSq37+DhxGGkgVETCP8vNDToWNP084otDBgqWdu4mZ4NO+bcw
X-Received: by 2002:a05:620a:191b:b0:78d:6427:6176 with SMTP id bj27-20020a05620a191b00b0078d64276176mr20808848qkb.61.1713329120161;
        Tue, 16 Apr 2024 21:45:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713329120; cv=none;
        d=google.com; s=arc-20160816;
        b=gO7QiBZWnbmyYejEpD/yXHY5kWSPpkETExrMGMXiDxhYi83/3s/ckgrQqgcisTrrIY
         ik3Fx+a8kI/JQkV29XIo7B1WqH2J0t7on+ZkfEW0BrvuHl1rF9KsgffhGO+YEQNrU34L
         XohpkIrbYL6m4tP5K2h7rlwbIYZe/R7wKYYpanN+NNbIp2xEjUe+lNYUd3jb2zLmKGah
         vwFASuf2od2+50NZqAvOyjg2hVzki89uu0wM1B/xhZmzCPm6jm3i45WzCcRRYoaKTqyr
         2WPrDGoRAF8KiL0BMb2GPN8SFVnUbFaKqmpgjs0vekxW9F91D7BwoUdU/LTiaSS0qj6x
         zvsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=QxuFHK85hSjy1cJAVhPjI2Mc+k6p4uETKzVUf06mt4Q=;
        fh=RYxCEWsAO6agnaLpj5IwU5Vlud7DVx2rj4v22zmVdeA=;
        b=YjLu8oI3kavK9DjwBP3PSQVIUIZxidc6Gu9ejDWVLsWkELKrjBC/PHU7YatoxXQXZI
         g6E7XbOoomRtiqcJmMQoJ5GZBG7la0LYw9mWTcSKCQt/4h8E7rX9+jiRfg0huwi7cbe1
         zB2BnRlxYWpUbLI1DF6M38CFyI2/sg7D5lvPaRvqDbdr7aB/aHYFsaedQqj68DC3x/bH
         7QDvlvvkpM2djbmO+6ecynU0iXf058p+NoRJx/wNFQKp/QIOHCMBnipRHYscQVvHvmwn
         t0iszssuF1XyeEhUFxEEWGEuzth6Oy6JSLbCBShL/qWRUp2uzUsCz2uIljm5vC0SetSt
         qp9w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id k15-20020ae9f10f000000b0078ec8244f78si12589707qkg.28.2024.04.16.21.45.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 21:45:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.147 as permitted sender) client-ip=64.147.123.147;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-265-1N2V1CiQP3m1Fa76BLyQ3w-1; Wed,
 17 Apr 2024 00:45:18 -0400
X-MC-Unique: 1N2V1CiQP3m1Fa76BLyQ3w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3FA4028EC111
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 04:45:18 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3BFCB2026D1F; Wed, 17 Apr 2024 04:45:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01C1A2026D06
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 04:45:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 122A2802A6F
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 04:45:17 +0000 (UTC)
Received: from wfout4-smtp.messagingengine.com
 (wfout4-smtp.messagingengine.com [64.147.123.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-244-bJCViM4WP5mS6w7ih6QNlQ-1; Wed, 17 Apr 2024 00:45:14 -0400
X-MC-Unique: bJCViM4WP5mS6w7ih6QNlQ-1
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailfout.west.internal (Postfix) with ESMTP id 654CA1C000D9;
	Wed, 17 Apr 2024 00:45:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Wed, 17 Apr 2024 00:45:13 -0400
X-ME-Sender: <xms:2FMfZoglAVtB73W95pkD2d6PXPpe-XgDBpWa50Jk2IgeutU9_ecWwg>
    <xme:2FMfZhBHi5gDLkNMd46Z0qcxpSvuCV5PHg8hDJ-rTERIvA3Igd8T4fNIDE4JqXxXC
    XqAuq2AVcAga6DfWGY>
X-ME-Received: <xmr:2FMfZgH6RW_i9j-tXkzdf6TzJ8hj4chCvz7PxjqY5sKDElo0CkqBvCcWtSvK>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejjedgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:2FMfZpTEN9vtVL-0i6lBDb5qMa5GhdNzA_QLD5tCTWDIfCoceK4sNQ>
    <xmx:2FMfZlxvDz5IGOgRyeUwJgNZw84boYyYH6nvm7WWXiOEtMxW-zM8Qg>
    <xmx:2FMfZn6uVTz_4MEN_n_-O6h5GnRjs0IvQFicyaoFnSs-EPAQacxyPg>
    <xmx:2FMfZiwRBj7t_ReOkPdeFT5ntGmf-1mR_XE5YwBFefiY-8gbawSJ5A>
    <xmx:2FMfZg-MPo8w0tPbHqBZeIe7dTcp6Rjd3UByYKSd5L_9hc1sDnUYT3vt>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Apr 2024 00:45:12 -0400 (EDT)
Date: Tue, 16 Apr 2024 21:45:10 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: blinux-list@redhat.com
Subject: re: change timezone
In-Reply-To: <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com>
Message-ID: <66df8141-f3ce-9fd4-8522-c7bb575b1c96@hubert-humphrey.com>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com> <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.147 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

You know, many of our mobil phones ajust time-zones as we travel, but this 
laptop never ajusts.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

