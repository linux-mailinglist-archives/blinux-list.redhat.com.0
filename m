Return-Path: <blinux-list+bncBC3NDNGRUAMRBNNYRW2AMGQEW5B2EAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 437BE91ECCD
	for <lists+blinux-list@lfdr.de>; Tue,  2 Jul 2024 03:47:35 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6b520f17fe4sf44845076d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 01 Jul 2024 18:47:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719884854; cv=pass;
        d=google.com; s=arc-20160816;
        b=J5fXFbqHoRJREVUu0Ey67tiSyONKK7yue31sJK69EscNNtsZeTVgWo/wHpzy+qtdxL
         oe/YFhdJqmIp4ynS9dFpGjpR5JaGK1VVq66XBeaYLb+fgHlbp0FJm2kys7y9dodbmyUQ
         6AHKvVBdWVWZR6zzfVAOO5CYMEs37gZpXjWit4rA6f+z/p9fsR9KtGFSW56BDUOr6YI2
         Dr/uCjBlslfk4UY6gg2JOZieP6QaK6JsPepBROsGBch9nqoawu6rlJ4fRgdIbzFbhffl
         obnYJA/wunweKtKpUoTLkHjhbB2m2t0aFBscy5a0Q/qtz6sotoG0KMEijQqg2Q0bZjEe
         UouA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=uIZ93ZTjYUsiB09QFAuwvvmFsWU4TNO6rnbr9hrZpyA=;
        fh=4pCHtfQg0f0dqL3Q69XttnNASJbcQvmGdNakaJYWTnM=;
        b=bUtO7HZvZjXnBKFhy2fjAUJMBH861raN67vQwKozBAxIAdb2gNrb7EGb/JoacD7Xv8
         AQ7rVJYY4yl6/93ZFiVW33BD1Gj8JD8UGnD2NHgPtPLvh65TnH/13s03IH1Ro64uaTWp
         /cMIKh9i0hDLl4qLZ5ru8rn201CsJ+l0XzYzpzKfStGB/Je4vkrk0he3zbhqpVdSAVu1
         RtYNmne6PoQ6xBWQ1QmB1nom6j6yQaSrvmq5CFyr2qrevjDjUpzymZNsl7JHyyMs11Ie
         6XI80r1sMuNBeukWjdnJ2Cpsxv7OId9bSOebjiVRH3EHz4V0Oal2vfEdxHTQgGkpTz1+
         5cLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719884854; x=1720489654;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uIZ93ZTjYUsiB09QFAuwvvmFsWU4TNO6rnbr9hrZpyA=;
        b=NU5bfED4C1d0LfaU4TIraWieYf8r5e+j+BlCqawPOlRIHc7TBSOawJi01majqr6Qi+
         231vtSHXjddbn1QJObcyGAXCSk7a5oSTlA6w1/U+2OCyA6t8yg/UIJromtRTT2Ntv838
         IqP51mQ6wG6r+Jb9cugYn9lKkg5WwQSlsFB7bc9CgHTLz7EiH9Jel3AZokpVduS3dOfb
         rr5fX8x3OeYRN/Jnr/L1IDPu+8Ou2j9hLnfX+Eh7HnHTRDIN0rxEWPu4PBP53XE2iRX4
         gH81kfEaVbN/u4DQGfYYvz0s/dfMXSm3+IIhM30l3JuOKyXO2bRXpoqZK30E6f0vIfNy
         JUuA==
X-Forwarded-Encrypted: i=2; AJvYcCUAJ1TxxVjuBkBCx2qnvjDIJ+F3RCkRBg3/bmaxF2Hf7k/zBxB7l6QMYG4w/6WJ5asgVAFPWcF1RRpz/ZNhFl/dq0sgfj2SHCJK
X-Gm-Message-State: AOJu0YyB7UrKZoKUFR+Il5hf8yQJ+O7Dtu+fImoUu7CcJaYUUaRZDXXz
	ZpQ7Ku0kA4XZkJvQAoB19u+/kxJyQ9GCnV51OlljMSBI0OwIbBZWTi0RAlkQ+R4=
X-Google-Smtp-Source: AGHT+IHVESw5OGMehfkL6kapILVdfyoni+9LhDr6XIDp4ysMzZmY9xIc9d0Na88G/aVRuMj1vOUW1w==
X-Received: by 2002:a05:6214:2683:b0:6b4:ff8e:63f1 with SMTP id 6a1803df08f44-6b5b70cb088mr104412176d6.34.1719884853875;
        Mon, 01 Jul 2024 18:47:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4107:b0:6ab:8f81:8496 with SMTP id
 6a1803df08f44-6b59fcb82a8ls58948496d6.2.-pod-prod-01-us; Mon, 01 Jul 2024
 18:47:32 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUSwKaVURHkRpMMSkOmPiGHcpS3pqmO5dn/zy/+zXiWyg+HCi+9hcIgq1f1itYz9v88QmVj5CyJPkTTL129oiE+sttEHKHQko2bbWmh
X-Received: by 2002:ad4:5ae6:0:b0:6b5:8916:f0ab with SMTP id 6a1803df08f44-6b5b70cd6f6mr107233596d6.36.1719884852702;
        Mon, 01 Jul 2024 18:47:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719884852; cv=none;
        d=google.com; s=arc-20160816;
        b=mqcKHpmJIr2/Pq5191g8nQ1tt+6u8xD/DhWIzzCcwYSA5WUaclAr6Nv2JNZQPj6O7f
         B3pudNkmZ7F1Aj4lS0msIanRBZfDFzNAMbmW9TgF2wylb3QT5Na/Mit5Ieng99Fft7Jj
         y4xfUxq2AMvU6HJZ0isDlg2sLWN58dGiDqDZa3mpxDStiAJ+CQX4zmcSn+5TtlQ4zxYf
         7QQH5cXFSm/4phvtP1QpYJNMpbK370qBDi2GVpqq8Z5eMKfWEBhQ7h8kkz2mmatlsAMT
         KbpwkbjtBBsLr3C7FNYLi+DshzU7xViIuEqvP8jhgePZ/Rotg8b5a6wTGt/cnhRiWLKY
         anTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=D02rsKr/Z7mnIkeaE7gmcSKfSTFkE5MwM/8PiWXdmbc=;
        fh=M2hDdBoUbzJCDM8JXqvw2GPfPl98Dq6TWHMvwhfG2eE=;
        b=sLWi+MNGUANY8ztDdW9aWLCByCCAf0ybk7MuoDnl+43T8AbIqgRxs0627OqpNRsICw
         qLZeU7Q1RXZHMIWMF2jwz5fCI263n43VobOYjghQe3TJTG/lhzxdH56aKMMkkH5tjE+f
         t6phNnJ8WPybFT59HWjhXHZscgXPn8EjUAU2gvoW2/bs5r9SPIS5j3iYmS/5Tar7N4//
         h6uIztpoNp62sWtxHqkPMGcL+TxrLtW3Q+fn/R4KLqrvDtFQPJAXw+XxymHPLW4KyxwZ
         cNhIfn6jFU6aeTyror2WZCbDe2lW+3RbpLfswNFoxhqijZlE2zAbOHDdNa/+TqrM8SJv
         aiHw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b59e5ea6cdsi97081536d6.327.2024.07.01.18.47.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 18:47:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted sender) client-ip=103.168.172.157;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-212-_f3kYRi_MN-xryMnHNp8OA-1; Mon,
 01 Jul 2024 21:47:30 -0400
X-MC-Unique: _f3kYRi_MN-xryMnHNp8OA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10CF219560B2
	for <blinux-list@gapps.redhat.com>; Tue,  2 Jul 2024 01:47:30 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 011F919560AD; Tue,  2 Jul 2024 01:47:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F29AC19560A3
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 01:47:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A42B1955DCD
	for <blinux-list@redhat.com>; Tue,  2 Jul 2024 01:47:29 +0000 (UTC)
Received: from fhigh6-smtp.messagingengine.com
 (fhigh6-smtp.messagingengine.com [103.168.172.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-465--Fh037BtOG61rnslJj6Qlw-1; Mon, 01 Jul 2024 21:47:26 -0400
X-MC-Unique: -Fh037BtOG61rnslJj6Qlw-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 685EC11402C2;
	Mon,  1 Jul 2024 21:47:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 01 Jul 2024 21:47:26 -0400
X-ME-Sender: <xms:LlyDZqcna9FO_9CVV__-yvqIY9trVi8RSur6UaMt2W4W1QOH9aumDQ>
    <xme:LlyDZkMIKhhoJrUbSNy0CXaHHYXbF2QBx_lOODsIDvRdS2aE1pqwvkPdmdN5f0xxG
    XyaVJ2B3yJfCEQlRyE>
X-ME-Received: <xmr:LlyDZrgOdryOy6XJY370Zd7bZDF9puMpNvfzPHs8rWOV45digLCW8vZSwcroaNp9mPrthgKs_u2BZHVEPfPQHShffjNYeicVcyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudeggdehtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:LlyDZn8AAbaBon7bgYCYUCEcPDChQsJWIYxK0idVHvwr_y60XLRpsw>
    <xmx:LlyDZmsUNzirgdhQQdWxBfN-0NRFy2e-bPH11rrFpWkDEkFSmp8ZRQ>
    <xmx:LlyDZuFvVonkBhy0i_cEMu1gL4bUYq_beyx3GiqcgF8RtaJcTYDDqA>
    <xmx:LlyDZlNaW9Z2a5X1ov0ZTBCX0Pws3P5TZdv8KccLjlDmil7mFsy19g>
    <xmx:LlyDZqKQzjPjoKsR3IuWml9CIx1ZcsaSKjZlJdh53xb1lbI5IQSd1uUP>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 Jul 2024 21:47:25 -0400 (EDT)
Date: Mon, 1 Jul 2024 18:47:24 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
Subject: Re: Fedora 40 workstation status
In-Reply-To: <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com>
Message-ID: <5e90b809-1877-881a-9c59-2f6d94d0084c@hubert-humphrey.com>
References: <99dd9ae2-6af5-f6ee-3387-6aa40862bdc0@panix.com> <8062e3e7-7230-4351-a094-03fe7b4bea84@jasonjgw.net> <d0c75ec5-6bcd-e1d8-4c40-83070dc1c7da@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.157 as permitted
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

Hi Jude-and-All: I didn't read an article, but in a Monday Access news-letter, 
there was a story about Fedora having not been accessible for 9 years. I bet 
the late Bill Acker would have never let that happen
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

