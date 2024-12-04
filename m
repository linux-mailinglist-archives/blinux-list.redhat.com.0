Return-Path: <blinux-list+bncBC3NDNGRUAMRB3WJYK5AMGQENNVFZ3Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 466BD9E43C3
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 19:52:32 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4668d3833a4sf1085941cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 10:52:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733338351; cv=pass;
        d=google.com; s=arc-20240605;
        b=cHvFrBAZoDXO6fLOQDdkjEdMU2Y8+k48h/94355v47fP4qV8sgTaERGm/OTjK6Fw7d
         C8V7Sv4F/T7MLaCiIoRGhTgoTEwh2XyPudh+92sCZ4IVhCyDDlggPNFRQKsodAJPVRm+
         bv4mzV5fa3zccQOW9Oy3gU+O+3WsEoALTuLlQ01vtLPVv0zpuPv77pKuiSDmr5E2wd5j
         WVqJSCdzXEWmiibeBF52tJNYsW17GqggqJFiDEaHfI6/2ZjMGWfbGdcIScnq6so+TE7K
         1fNttNsSWJtimwnEbGeTjz4aGs694GLIagKW8yG1VTCGC9u/5f1KfnLh48s8yGzuVddX
         y70w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=KbGQD5AHf0pzO6XEBaYhss7fAaj7+PsKbwtN7BghBZQ=;
        fh=dGjQHOIpK1D68+/9O+n0sC8i+ldbEvadAAyMI4cHOa8=;
        b=L3SsYlV8QVzMIhYIkKFB8FGWQPD89kremVoGhLyUBQ7FiTpDywvfUZzg2yMFEG9REU
         pAcmC0ZNSLl0ZVMrcdAryAMP6feR+MCEp/1HukqpFdetKMIYuWzm1BpxF13za2iSPj0L
         1c420p+wxlMTBN4LRIBI01FgD3iSZyC6rMxhK4bt1WhMts3AiDTmM9mI7j4N8ylQaZTk
         iPgPXCU/ITwzhB0l72RzxvCsiirMWunUy0N4tCsvoibeXC7cJBqwmKIdWUsn+RY+aubq
         Ei+s9yB8gYD+VnVaFPVy0W4Z+bPB3EJDXF3gb9T25TbTvSup3p6dFL3KGLfL0e04jPJV
         7JoQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733338351; x=1733943151;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KbGQD5AHf0pzO6XEBaYhss7fAaj7+PsKbwtN7BghBZQ=;
        b=H7ESdGlw/on+NWrOT91E44Fd6bi9l2xig4ESvvsWns/AsBwu4WTRKJYnnbfMF+qWkR
         sOmFYwR4fh+I7Z/fpNnzD77dbVqppip8r6RZBJi3N9b//h3C+mtUMvqGxTIOXaFmWPI4
         iRxEC7b+gLGZUaoJ3rNXWproTZtwh4taCOsNZCyxcUWs7Ry/pgNowShNv996aFD0/m3+
         Un+g0mBwCX9nDTN8qNYvEGBYyhui4SKeX1PugM+ElLpqsg/s6glImFo1Af7LuKAhqmHx
         hkLfOypQMfg7l94b56HGCDp6F39j+yrsw3dgucEq0pd6zwWkJBs//u69EqwZnw8mzcTS
         yi0w==
X-Forwarded-Encrypted: i=2; AJvYcCXR6bl7tmIk6TbYVk2IUNvMRtcGyMV2wR9AIo3pWjJToj4alpJsJKr2a9x1HxNf/6vDmeIXdw==@lfdr.de
X-Gm-Message-State: AOJu0Yz3uzhoxqDgrxB1C4CSj8JItjO2akfQVraKleHexZ/9s3cspArm
	A7JyI4izLlXAubhFOZhBMBqiZFxECRheLOvkcxh9+fAE12j1QqjnUTGVvVKasxs=
X-Google-Smtp-Source: AGHT+IHvxD1jGTStRxKzWj2zdJ3jpnPyUWiPLaoLd56ZgFP2eqNXuOPNygFvk4WPCnHNRauddAmZNw==
X-Received: by 2002:a05:622a:1114:b0:466:9d79:4224 with SMTP id d75a77b69052e-4670c73a7admr96645771cf.47.1733338350944;
        Wed, 04 Dec 2024 10:52:30 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:59c3:0:b0:465:2fcd:cb06 with SMTP id d75a77b69052e-46727d25c71ls1418891cf.2.-pod-prod-04-us;
 Wed, 04 Dec 2024 10:52:30 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVOiK3/BoOZU80ddv1b7ZcDtI/X4XNkhrkbjRCu0kqF/ZLW3uL/Zdog8lWowaoAdkIIaJ28MZ+jodpXTg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1984:b0:466:98e1:cc70 with SMTP id d75a77b69052e-4670c14008cmr107573131cf.14.1733338350210;
        Wed, 04 Dec 2024 10:52:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733338350; cv=none;
        d=google.com; s=arc-20240605;
        b=CW7DQnjS8HaIvs7Lc73eSGPpR1M8YZk4TqQ/ouo9TnzTP/GMzppVV+oi5mQMFq7pgG
         ce3mzUgJ+QDt3L38UJlgBfvtdhi27WUsRnIis1H2QqQJDHr1yS5VIl37Ho1Rfyra9kdi
         ArB4n8su/TaopQFOopxM3YkcSwfEmfxvQ+l56rcVZ3RPrG5B+4aZP0Id0NsWl9vYMFlG
         ZwFKhXRkDltW/Ad9XAATi9wsGQqayeKHplosf/W/N2ELQXJ78BxW/g+KqAruoAS5dkdz
         Omff3KgudLSkcGMOfVjRsLIpi8MivhAOhiBIVLv9ybmOY690KliRK0//MrA+kUDsbxLr
         0ebg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=4cB2YnDBiKJE8qDYxRqrtEpXTOQw1q5or4vDyke1yvg=;
        fh=IcqJJD4qaK8LzzaTBE8+DA5eDqYnBzlACt7lWP+7qqY=;
        b=aEIBUgAUi/XAclhf6nKo2P2sDIVxzwrhesnDEogwcuNQlj1YLRv9XHJnQZQ11ny444
         nEG7LK8bNmoJPHH9hWJ4X/RbQo5EcHvwh0oEPTZkjyKWrTfuIQoYdvxwEEOa+MaTA3fC
         cEU8akF00Wgjg+EMIoecwENFWhjrhkjCb+RBq4hH5GOAd8ooZ5lEwdtXcJRorz8DL/cy
         hp7HvKsk1bwpw05mC4cKB0ZlpNFT5XBC4ug1RXcKsyIHTzGQAl7dMND5TXjO1pzKMdSL
         Zqsu/TWiysr3TjexqjEnANMQh6K+9dKdS41FC2HfxdmVCI98XLn5Q7i1sjawp0rC8jhV
         v1fg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-466c42238cesi168964751cf.398.2024.12.04.10.52.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 10:52:30 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) client-ip=103.168.172.144;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-47-qhULPIYLPweccRzoOQc6Jg-1; Wed,
 04 Dec 2024 13:52:28 -0500
X-MC-Unique: qhULPIYLPweccRzoOQc6Jg-1
X-Mimecast-MFC-AGG-ID: qhULPIYLPweccRzoOQc6Jg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA6D41956056
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 18:52:27 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D48761956095; Wed,  4 Dec 2024 18:52:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D1E5B1956094
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 18:52:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4B0461956056
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 18:52:27 +0000 (UTC)
Received: from fout-a1-smtp.messagingengine.com
 (fout-a1-smtp.messagingengine.com [103.168.172.144]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-126-E0lQaT3nMHOv-Lf2Yjj-dw-1; Wed, 04 Dec 2024 13:52:25 -0500
X-MC-Unique: E0lQaT3nMHOv-Lf2Yjj-dw-1
X-Mimecast-MFC-AGG-ID: E0lQaT3nMHOv-Lf2Yjj-dw
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id 8D1F6138070B;
	Wed,  4 Dec 2024 13:52:24 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Wed, 04 Dec 2024 13:52:24 -0500
X-ME-Sender: <xms:6KRQZ77Aev_2WjLvLkF2zz4Hb3PbVTc9aR4uiAEaC_X0k-gscQKH7Q>
    <xme:6KRQZw7hjMv1JVBM3WAm6CSRmJ24LtYf6-uF4diOQqI0ircoc_WjsWM-IoGwKalMR
    84G6o8FfWR0JptYFzI>
X-ME-Received: <xmr:6KRQZye_dtGstegfKFGTDFk2jitdjZodGt5rfzyeGGgz_58U-ysXu7m62iK7wAaXPDbaB5mIU4DzZ6tbkAqCsjyQMUMzx5bGLFo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrieehgdduudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnh
    epvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvg
    eshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhho
    uggvpehsmhhtphhouhhtpdhrtghpthhtohepghhuvghnthgvrhhksehgmhigrdhnvghtpd
    hrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:6KRQZ8LZIy7Bmvgn7GLqcTqmPE0MMez1fIckL1nS_d4mR8xBHtkMYA>
    <xmx:6KRQZ_LHAxL_BMpLiVLgmb7fgvXkxK_sRYKas4WLGWHiyQFgf_mdSA>
    <xmx:6KRQZ1wqPsHK4pjUr9Af-xZhvokw0eHrxNCfOOPXORRHTB3gUOK1qQ>
    <xmx:6KRQZ7JC9GjPKP6W098i_Hn_kn6gHnRRSHzsBnax5DH4lJoiyTJ1uA>
    <xmx:6KRQZ2UhcZwh_HWfPDLoicxJlJ-_vLeqyRD6C7OF6jVnNP6I3oY3jnRr>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Dec 2024 13:52:23 -0500 (EST)
Date: Wed, 4 Dec 2024 10:52:22 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: guenter <GuenterK@gmx.net>
cc: blinux-list@redhat.com
Subject: Re: Might 1 of You Please Remember?
In-Reply-To: <82671067-e4bf-4c49-9d29-720efb0c8f49@gmx.net>
Message-ID: <2af1457f-b409-25d6-f012-bc12fe0a16a7@hubert-humphrey.com>
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com> <94c7528f-df0d-4648-b8da-acadaba3460d@gmx.net> <24053523-34f6-0be7-50d4-5766ee8dce51@hubert-humphrey.com> <82671067-e4bf-4c49-9d29-720efb0c8f49@gmx.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: U0FTeunRfN0eTfuQjYzbTF4mD_WCbM_8dL8EdVNqFcM_1733338344
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: YGFSSy0gcddphkkLVTT-5fW2qPLYo8CkgTSwn0LWRkw_1733338348
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted
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

Well, Guenter, thank you, while looking over another github page you sent 
yesterday, I found install instructions, wanted me to run
cargo install trashy
so I had to install cargo, which installed 141 packages. Now it wants to add a 
path statement to
/home/chime/.cargo/bin
I thought maybe it was path=   but no path command. Thanks in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

