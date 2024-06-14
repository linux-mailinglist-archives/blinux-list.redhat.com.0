Return-Path: <blinux-list+bncBC3NDNGRUAMRBAUZWKZQMGQEQTHQELA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F2C90924D
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 20:31:32 +0200 (CEST)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-254cd711060sf2628510fac.3
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 11:31:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718389891; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPZs0cTv561Q0Z2JoGfv8lXToAAx6KDiVE0pSYHIDWXibSgpdiHNlQGDAcL4OyJzKV
         GzQxe/dbx0l/Tj6FrMy2kpA+PhiaVEoWzRqMdk0Ucvph6JzzSQ1Vzt5ApAzeyXqsPjqX
         nqStlj/7+qjJyUEHTPLltBbL/Wn32PC5zo9v+4/Kszn3pf9j85v/hWcjybnDQdoshITh
         K8w3C0CFvDLi4RlgRS99/fcZADubGf13OfFqKTHf6SnW7QaI6qR3NdarwOxJk51J/VDN
         BcBqupE3IKbJ/5mRolCvYQnP2/8ouG3mOnQTr3KvaTyQ/h9TWjYP6xtYUhMfF6w6Fvr4
         Y5Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=C7FGOfzRS/Iz6Vm4BSswYuAgkoKicefozqBzQRYBCug=;
        fh=FJSsf4e1+fDSGV0nr9XxAOb8xai6jV20XElrY/6GXBM=;
        b=G6KWJXVZDI4QQM63NnIjcgsJ+1JD11GOD52u7oHOEKwANJiUtk5rl9QoF+Yswet2bT
         /JkZJLGZcMCy6anGHRpil8Gv0RP8ETsFgLDFqpcS+9rnLO+1rf5aSy7Edmkb9y9I2+g3
         1gHseXkWu74+KbK1UKL5SOvo/ColwNV8z0C/sw+lnWzAVQnXOvaGYMjeJTfEwKBE0J4u
         MrCQgs4jwCY9Ts0Ztht7dOJgtBS/5QMoY+Kz25ir7zl6dHXIpG2yWmvuctjDQMrRRj3+
         r+6l+/xfooYlkeYK4MKcmPK+DRpHT4ySaEj9CyueL7PixS6PV9QWCehEX7NFSi2qOWhx
         0t6g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718389891; x=1718994691;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C7FGOfzRS/Iz6Vm4BSswYuAgkoKicefozqBzQRYBCug=;
        b=uBdwgCGgQ4EOttTO3hXieoYrJ+X3FadKcf4oWBb1CwhuMuDYO0MPLapyyIdVyEPvVf
         XTnLCRxZGipgL7SV06dSYFbd+7xz2PNPTEhQ3wXxVzj00qHbVA1cDkmt9fqhHnGbnM1A
         cMQF2ozs1TqGJqdXVyKKWxWHEdeu6r9TkMREraQhsybnnP1HmlR8uO2HjlbszLL0Wgph
         +9w5Ij8bT584vFOYDsoc3tIqyI740QUyAl94dLO17b5RllI9jRmETCfwfTVK0DuIAlS9
         B02SGuBM4lYlN3eLHg9JAihDCg+Jg7XbU1HzJfNwNVoYsdOMIy/02sJULQqGEXJgPSn0
         BysQ==
X-Forwarded-Encrypted: i=2; AJvYcCV065yiMi28K3bv+5oBnC3coqO1PRumvg/EBo11+Ph73c8pohSRWVd3MRH11yFL2DQWrLh4iJrk5LM5V+HoPjRkVN7DRf39LM1v
X-Gm-Message-State: AOJu0YzgPdrQcZdPDHphEW79nlb+P21eKO52d0BKvM1yyYHufQtUgWJ6
	mEQwScRTF3/TFAxd+i7iBNLdVlcdDG3IJg6J00CU/dtw4NyxSLXahBvvpM4+Lgw=
X-Google-Smtp-Source: AGHT+IEpzQ6S7pdKA8XNc8JXpB4m65qijdDOotoi3aOS8nSJ+JJ2tp0cXANaq73P4GBj7vA+G/thTg==
X-Received: by 2002:a05:6870:45a3:b0:254:85c0:c71a with SMTP id 586e51a60fabf-25842c1478emr3122527fac.53.1718389891036;
        Fri, 14 Jun 2024 11:31:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:a791:b0:24f:6f0d:5f4a with SMTP id
 586e51a60fabf-2552b69c1a8ls2346244fac.0.-pod-prod-01-us; Fri, 14 Jun 2024
 11:31:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUwXt1S2ZIvIupWLw1zpRUWFDXnIZW9ImcPggVnmTf4R8E3AAyirZNP0OyMro6N4irbls7OrTdWMMLpb1RtIbZFnGrrbR3ObcRhDOao
X-Received: by 2002:a05:6358:7e11:b0:19f:13dd:b799 with SMTP id e5c5f4694b2df-19fa9e7896dmr401557255d.18.1718389890089;
        Fri, 14 Jun 2024 11:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718389890; cv=none;
        d=google.com; s=arc-20160816;
        b=M/ye+LvTNigO9yX/qFjdNojZixzUjBj2Aw/E//UPzzDn/EZTzUzc4AUbFjZaSq9Fmj
         jj1oMq9adCm7RA7Q5ON5VjthpPLijr/lr+yB5jP75FpEs4ZynwM/i1+rTTmrAydV7KV3
         nwM6iL7O4ZPM95XxtOXpXjx6yRNDm2cMfjjIMIX8swcrkwb+fJM6crqm5ENw4OtV3twX
         ed0cOU7aKvDLK9Xo4Tm0ibn9UqRrdMopfWN+otrpJABfX1M5CFW1GojZxFxN/9a4CICy
         WBpzlQ5iJignDq5cuKH8MsLmgJU7WJLCkrJO/cKx9G2tPbuqonCxQbl93mWzdwm1S28K
         gCVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=Gpt3E8pkyVuRY6miLmo3ryvm7UciaG5sCpAyqM2QeAY=;
        fh=+wzaApPTS4vSxG4G6b+UYKEFEws9aSi3ASuCO4bg2ww=;
        b=GsUstr3AXrsy+Qv7OBF7yow0iV9YSiDuFnZ4g6QMz+LNTfgxWo+sS0+3xeEz0AfmIu
         xX+EqEa5ZwW2iwfE2GqkzgniMsL+tGCdo3XrxglHmxzmYe0z29WE0O7dkFmN0K2ZSoQ6
         cl4vD/zT28jE5lShdVD9bFtCtFEaGKd1VIpCYqO+grGiE80NAOqNKAZWLvcTrjwEh0F3
         RvwaAW8SEXKk+2IEKb546ipwhHpi5jcD/Mxb4eGRKD/cIKM/j759/G0NaEttIxu3dgBg
         fFthHq7r5DZi7LSSaWX4S9oOjmF+3uQP+CvBsvcehm7kdKjoY2rZe6hTBVI4SdeXrIQY
         LiZg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b2a5b992easi44331906d6.611.2024.06.14.11.31.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 11:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) client-ip=103.168.172.144;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-101-brXaR8kUNgqdl0Noz5-DCg-1; Fri,
 14 Jun 2024 14:31:28 -0400
X-MC-Unique: brXaR8kUNgqdl0Noz5-DCg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8477A19560B8
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 18:31:27 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7465D3000222; Fri, 14 Jun 2024 18:31:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71F823000219
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:31:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E7C2719560B8
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 18:31:26 +0000 (UTC)
Received: from fout1-smtp.messagingengine.com
 (fout1-smtp.messagingengine.com [103.168.172.144]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-540-VHJ110faMUOLr6RhlE4EHQ-1; Fri, 14 Jun 2024 14:31:23 -0400
X-MC-Unique: VHJ110faMUOLr6RhlE4EHQ-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id 654BE13800E9;
	Fri, 14 Jun 2024 14:31:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 14 Jun 2024 14:31:23 -0400
X-ME-Sender: <xms:e4xsZom85APQ5iDkc_SS2V2109p7KWZoqm1mJIKCOLyVE-VNNrIsXw>
    <xme:e4xsZn14CQ7QPg6liGs16pcKXpwu2AvwBaxu-cRHsRtDxMZx808huX15d2vxrL2aG
    KgkxFyfwY-WWr5TR_I>
X-ME-Received: <xmr:e4xsZmrz5Ow5CmCsgYVpFy8sKzb_juZxcr2-NJP2GLQIRtQhWVynlBk-MA4c-RjBtvvixOlmavmFA1ZPlnjrPgojSQkoBwFAqFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeduledguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:e4xsZklMyCZtQV75G58mLvIjtgq0tVo3yDaw8CN1wbfuca8iAbwsLA>
    <xmx:e4xsZm3VYVW5gSS7fRKgee4qvr_0Ii7feLDY7h80H4DG85yeO6X9tg>
    <xmx:e4xsZrtpygc_XRX6Nb32PCvKYmS06DI4TRrzalvMcJB3GVUIf71uJQ>
    <xmx:e4xsZiWYLkEl8UoWCpb_-5aj-4Sw1CiigTbmKKhsCnNXuTRzFrC5tQ>
    <xmx:e4xsZrwrcgtPow6SyKug5DV35z7u9JOMZRAyhPyWoCtqHoHUNO-cqGmx>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Jun 2024 14:31:22 -0400 (EDT)
Date: Fri, 14 Jun 2024 11:31:21 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Jude DaShiell <jdashiel@panix.com>
cc: Rudy Vener <salt@panix.com>, blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-Reply-To: <05ff5050-87b5-a355-80bc-d328a2bd0a8d@panix.com>
Message-ID: <1e59cb21-fbcf-bd00-24aa-3ac3c0364a2f@hubert-humphrey.com>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com> <a0f98110-689a-41e6-a1b7-8c5f7b6cb939@gmx.it> <2b2e74b2-5cdd-4dbf-961c-a13940eb8bb7@hubert-humphrey.com> <ZmyHH4DeAXMQzthQ@panix.com> <594ca1fa-85e1-e610-9902-a2049c0555ed@hubert-humphrey.com>
 <05ff5050-87b5-a355-80bc-d328a2bd0a8d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
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

Great idea Jude, but its not there either. Well, actually I grabbed it on my 
laptop, so will need to fix the sources list on my main machine. Thank you all.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

