Return-Path: <blinux-list+bncBC3NDNGRUAMRBE6T2W2AMGQEWCZSMSA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id B849F931A41
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:25:24 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-79efc85b0b2sf253716285a.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 11:25:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721067923; cv=pass;
        d=google.com; s=arc-20160816;
        b=GcFQibx/z0qu2qbpkOmxHoDNcZ3YzlcgTALpFRKDqHua5Om8wKQJA+mmmW0ylH5Ds3
         SUw+QdE4D3vtbNdRgtusPqzv87h/8LoZ1Navc006bmfV+ZDVEWcfzyjc4+V2HpBzrBUE
         alEPHPj+ltuvq4aQ3E3lapZsuB4kJs5qd6kcSQqtxA1mu7L7nKnxqgn4aVz09k6cPjxH
         efOTR0sh1bDfcw3oWhXHWbQhte0nctFP6r/+d/VZn6b6Ruh55MjlcR1qqLotR/1+T0jv
         8dSFoZEEf60QvbdKA6q/m7qlyMoLZaYiU9CGsZQF4DxESj4lnHmKoUuSPRCA2zxmcFe8
         ZRMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=cQ7fNeHFY5P++rzBC48jAqR4AGiWFBJ8sAciD3jHcUE=;
        fh=JKfYFG8DYrAfEQdZGw7CSpc9apo2tJtjjTBuGTay3yI=;
        b=M9/WTPxQnZJfXZmBIhz03vmYG+DypVBpaD7NO+DyiHTnhI4ENHN/q9RQPxwfbiOMpM
         wMmjYk6DbTIFk1CcT3uHHxnqrFre42paSirS92ZkKBOHmiRqfQbTDXvc/6iAX1cGE/aJ
         Y0z6/y5Nc2sF0IKSKRgMxwqjCpUEMrDKR9/gE52w+oVi4teBAoCbU2pz8fXa74Plhyn3
         ZQx3rtO0Xr7groom/iobI5ULM2jM4e2IHQN7vfx4T24s5Cr9pVVcNCzU3cptpdm25i+h
         i6I419C9Il8JwaPrw7tJdreFxK7baodpklKS8JuBx970X+PYcQ997M8cgro+dE1A/AxG
         ItCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721067923; x=1721672723;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cQ7fNeHFY5P++rzBC48jAqR4AGiWFBJ8sAciD3jHcUE=;
        b=OlPhwzhwqjjV6kLqqBb60s2uksu8qlE4NMvUrxmQJIcYS1TtrjSBrrwBODVwCNwAdP
         2XhYdZJjU+x+VKcy4/N4o2PHOKD4qPk5vHgT2Omx2+0eMMsjcojhPo0q7YPCeAoGQZoP
         NYAlNHBP46fPNxFPuP4GxF3YNs/+WarEeIwSrKQHhQzb8TR6K9jo5s4Esk+F3hmeV+Vu
         3CgHZNE/iT1UmBvdgO4+PkQLBnhCdVBI56YOGCnUUY4PJBSA6o5EKVR+OtB9Zv7Aeunc
         ynBRZV+2esYTjX3w2hr2XHTHctxb5gwQmyxO1D3mFC69K3f1aQ0Ui2vlhDBQ30P4p9iK
         8n9Q==
X-Forwarded-Encrypted: i=2; AJvYcCXXuKg6F27MVwv/1zdjBnKxjFHP5pw3X+qoWBP9VcmV6wB37OO0WV8cVfPwbyJ4B8TnoHMhEWxlgLgZnqKInXDmOFEfBMqO+ggt
X-Gm-Message-State: AOJu0YxVupJL/zRlpFV/cMrEhZgVD/+Kyr8ZbyFVKMfPvGJQuxFHkMBP
	LJyzhmbjND6bu4jGCcaHoafWJqOg6It3Yo2Kkvq5vPMQr554h6gAjHfJGiyzbic=
X-Google-Smtp-Source: AGHT+IHFIRJRmWZW8wMWrPlzjTAr/Ne0PpstdTage3C/lDu5tdW5yqLWg5KDMNHuRMtq8PIfZZrWSw==
X-Received: by 2002:a05:6214:20e2:b0:6b5:832e:d999 with SMTP id 6a1803df08f44-6b77f4f37abmr512056d6.19.1721067923336;
        Mon, 15 Jul 2024 11:25:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5fc7:0:b0:6b0:8881:bc19 with SMTP id 6a1803df08f44-6b74b42746dls97355186d6.1.-pod-prod-08-us;
 Mon, 15 Jul 2024 11:25:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW1Yf/Che3nIy0rg7eKdLoapK+SUUSgL72A+og3aY7RLN399WCjDYr5D1kMzb5Md9T2NoBYCbiLUY1hAIdcdeG11Ah/DVyrF2/c8yXo
X-Received: by 2002:a05:6214:21eb:b0:6b5:e3d4:f7f1 with SMTP id 6a1803df08f44-6b77f560b74mr246666d6.36.1721067922510;
        Mon, 15 Jul 2024 11:25:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721067922; cv=none;
        d=google.com; s=arc-20160816;
        b=g4uqESYybbAP/OPH1ip26o84f7WQhF2kFk6WXM52EPWAXKYaNWSQ22UrWAml2A/d+G
         E4L2tu2Gug5s1gC4fIDgEZPtkk7Cz4L2apDsmah8lIZ3FoBOxLci+BDCHnYRIRud3c2v
         lYiG1FbRI8zlovO5+UiKWbA/cBeigQvUiJSoMOv3iXhWa9/vN4UpPrf8Rl8EDenOI1YZ
         0dm53fgZWHjooROZ2U7Gih1nL2HZE8nOqzvNf61JSbjcXjzM0Nx30rif8hw0AL+VNpAg
         S4EoTT5aq1RHDsdLmK94SkXCaONzJP7WOj9AN84JFJZUL3e8nG9YJfFgzSJ5suusjkcK
         BxKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=hRGaafXGhJ1jKjYqWUR08eVC78+agPjj6SyOuWvxDV4=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=hpYUiw1ZMoQUhJSTgL/dviV6umc5JTBXCpPobDWJ7mnRComRGOH6aShAv93HnLU5vS
         rePmiDOIjBmwVIY+mCMYe+VSrQRX/tCW2iKnr8+Fi1meFhywoEDPMBJgqImIbpFHVcOP
         HmKnqufAfnbceXujISREQg32ItapkQzMtnbj3MHb9l4JGtSiiZMt4o82ms+dZ1RhdJIn
         j//Px1JbGIzuDJS5m6a1V/HRrjm5AY82ciw0wGhGALVQQCyksmldyxhyTD8rIJC4/bW+
         LKXV1cBgQtxQ3mG70pyy0lej2D+GlWWPsdSRDXUsag10rUL0WZUaaNNA3P++vA632Qav
         d81g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b76197cbabsi57311626d6.174.2024.07.15.11.25.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:25:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-550-oobC2uowMmCvlproLNsOyQ-1; Mon,
 15 Jul 2024 14:25:20 -0400
X-MC-Unique: oobC2uowMmCvlproLNsOyQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BF8281955D50
	for <blinux-list@gapps.redhat.com>; Mon, 15 Jul 2024 18:25:19 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AF2D21955D45; Mon, 15 Jul 2024 18:25:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ABD0A1955D42
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:25:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 480511955BD0
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 18:25:19 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-631-B7ACCGb_PliAd1AdHzYCIA-1; Mon, 15 Jul 2024 14:25:17 -0400
X-MC-Unique: B7ACCGb_PliAd1AdHzYCIA-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id 9F0041388B1D;
	Mon, 15 Jul 2024 14:25:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 15 Jul 2024 14:25:16 -0400
X-ME-Sender: <xms:i2mVZizq2wReSUTA59mCv08ZtUXwCgGRrUSWiREqt79dZAmDIhZjpw>
    <xme:i2mVZuRYjPZcNdTWttWBG9zPZx-HMsSfMlcR1fX_952HwY54ggztRRQ70LbOwwWeb
    DkfUs6W265MgIT5pZo>
X-ME-Received: <xmr:i2mVZkUJL7OOE6pRT-26XNoAgfNI7bY-mgRdqVrgRfMaEe3Bo_2FtR3ahGyKC6AStfHxHCMhUXAOSsYiNk5RwjqIS0Q3PtOzjcs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrgedvgdduvdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:i2mVZohc2jNnXHTgYfkcYjojiPBfzwsiqnPgr97UOLGx9wkTYDPuMQ>
    <xmx:i2mVZkBav7y-m-XO9yZY4aK_Dqw4ONHiMvXzdhyasAA3SxJHwcHU9w>
    <xmx:i2mVZpKJdXxRVqQVMrGATxyBy5z0ZcwksDAAq_a7nKKdkXtxtvQXXQ>
    <xmx:i2mVZrBQ2njplCw3LWEoWjEiNVto-K429BSffOiT05mClIZ5-m_exw>
    <xmx:jGmVZnNvw7WjJ_PGQ4ATxw-5r2OUC8hYoRWECslDgMxERA8dPHjJPb3b>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 15 Jul 2024 14:25:14 -0400 (EDT)
Date: Mon, 15 Jul 2024 11:25:13 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: how many Linux machines do you run?
In-Reply-To: <Pine.LNX.4.64.2407151419440.3548142@users.shellworld.net>
Message-ID: <66c78283-a5fe-7f46-ca57-84eb802b125b@hubert-humphrey.com>
References: <Pine.LNX.4.64.2407142337570.3536958@users.shellworld.net> <71972198-e2e4-9aa4-ffa2-242ad9e066cf@hubert-humphrey.com> <Pine.LNX.4.64.2407151356560.3547821@users.shellworld.net> <c9f7d2a9-5da2-1cde-7cfc-a1ccd83d2128@hubert-humphrey.com>
 <Pine.LNX.4.64.2407151419440.3548142@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted
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

Well, Karen, I just typed bash and tried it, but for me it just beeps, so maybe 
there are other ways of grabbing that list? Hopefully some1 else will know.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

