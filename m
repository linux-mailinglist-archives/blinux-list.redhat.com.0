Return-Path: <blinux-list+bncBC3NDNGRUAMRBMGVVK2AMGQENTXY7GI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3F3929872
	for <lists+blinux-list@lfdr.de>; Sun,  7 Jul 2024 16:48:19 +0200 (CEST)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5c65ed224a3sf2973730eaf.2
        for <lists+blinux-list@lfdr.de>; Sun, 07 Jul 2024 07:48:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720363698; cv=pass;
        d=google.com; s=arc-20160816;
        b=c95ZWC+frNFWiKlBO64rSbOsA+X3lBUcpnCPWuD3WYXo1/5R4qn4iQepsXIid/XYox
         CmMqvJ7KhVzUbksHx+5Z2RdTmtmMsywR6BGflttznacYnLjYrMF6/FtMyPRCaLSDBacx
         pVeVGXi+vk6Ke5u1f6MdkdNRXuCNrosAGxgQE/JJppIq9qk09LbMYGaTFKAbYHzBrwY7
         VPdVSumftMTJ68/aRvp2etfWQUpbYZEdYsoZdHp4poYh1oBtMQfa9u772qWMejbJHLBH
         VFMTfbaHLt6b7UceX05vyd7SobiO+fVkvFH8jqk98Uam9D65DiADdbniwREqgRMlI0vf
         CPPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=XRPGvl1PBKTg+kZieHBI71tMe+hTafdD/fwaYPxe99g=;
        fh=eEBcnmaCzS3Kb3gHTnYnJcM9ffcStb0+/f+iXyjbVI0=;
        b=rQF5Xo3AuNh4N1EIaotOCGNNsdgDJoPI3wsYVRAregNqzVS3w0jjk35MBxs3wk+lZf
         TO/c7JmN/mFR+8RUrICxPTyNsiCGpxZeadMlFSbuHrbXl5RiVxaDtxuwfqI8B5qzOBYl
         JPnQ6epB3Q7l9TkKhuLAPcEezD6hDjupKrRD/ff6DVFyXR72jz21BN9TzP0uHPMmJ0Bi
         0cc5rrCAJTTwhT+rlcbHO++hePvygUZ2s2qCMT7TrQYyq4se8vcPgQLPxHcF+82199H5
         fIKdIGtf3xJiACzicCQ6bjZdIviK6AlsiYMmX3+LW+Yz1C6dVFelJTapaWAfMWZeWDMg
         /sMQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720363698; x=1720968498;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XRPGvl1PBKTg+kZieHBI71tMe+hTafdD/fwaYPxe99g=;
        b=exO4vFGaaducUAZRyLJkpTcg1QhtMoUWSFWVn4TAb7gbnJawniuUULtGlpyWUnv7NI
         ZAAuA+QwI67lWg6IXXeKgsFwWDaq/UpSXpn2tH4BNUrFXm/Zo+F56uhRVgiG0bmYRAE7
         oMdsjJ9GdxGHRlkgt8I4t1n6i7aY8C0ebHcaRYu/lAfm7ZsW6Wpe7RgjtIbFWwJTo4aw
         ypAvGloRnIFrr5fU/QfiYzCXOxyiQyHYzcXR3oZaTUKhaqcR5ifdus7iniQkxLTiSoC5
         j/Wioa3T/3DWs2celCLZ3dpjbq7zyp8ald4yBNRsxOzZm7V5X+nbpvoaLQBbf1PvKWll
         6VBQ==
X-Forwarded-Encrypted: i=2; AJvYcCU5AVPiOmMLmHveynB7hRm140YdUnC/Zg44UyIGv8g+CSHjOUnSQwnd6ATyb+GBSaaICXZ+daM5Nq9k4j/IQvQyB0YghtLokHAX
X-Gm-Message-State: AOJu0YyU8gblo6fP6TOMhGB+PXpAmvw2zLa7R1TajIr1nuhGtqBv9ru3
	fJXoGpI7JY2RyISClJ1jRFckmaglw4az6FWB0ETPJt+eGw9AmsiJR7rnQvGhiz8=
X-Google-Smtp-Source: AGHT+IGavuvQwR/B9DkcIhe24RueviscUzd87VdTc2bsDjKdydZbbsl8slfUWIcmjZ6XU8J5lxdO6w==
X-Received: by 2002:a4a:4884:0:b0:5c4:6068:6ae4 with SMTP id 006d021491bc7-5c646f788a1mr9580186eaf.7.1720363697439;
        Sun, 07 Jul 2024 07:48:17 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:4843:0:b0:5bd:b810:a87e with SMTP id 006d021491bc7-5c6436e2a7bls2369843eaf.0.-pod-prod-08-us;
 Sun, 07 Jul 2024 07:48:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUHe/hfl8b81ZgR8tKEFLSUNFVNKxRpXoGdYwGWw8v2FxN/3JB8Lb7g1ToV8bvxK/cihaUekJL8wF19ohHZGoozliwZndj8AxBn6O6c
X-Received: by 2002:a9d:7983:0:b0:703:6703:8909 with SMTP id 46e09a7af769-7036703897cmr2876434a34.11.1720363696522;
        Sun, 07 Jul 2024 07:48:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1720363696; cv=none;
        d=google.com; s=arc-20160816;
        b=ctrkBURl8KwSVHTnDWToAlLbvE1qdnRY/u8QV17dzDJ3PnP2a3yFDPyBhp1Gk8shuP
         v/8QHNdQd/W3jo53zyt9c9iGRQ0hi8hVLgWCLsvV955A+LUDg3qKT0ue0LhC5N2fXI+u
         7uvvrTTMtDKMjF7KFN1vN4KieFRAMaifUtblvuaqP5/ORyP72HERkZ3NiqpDH0CGNP60
         590FNPck1Ugn+5c8ON3qzJHjT3u9K/qgMBHrn/5c1kgkoU+jsVrPfGBPJWi2jwhIqgDu
         JedUI/qMEeGabxchRgRB5zM0UQu2TSeLISxmKr+W8vkLCsUtXaNfuUjfIgrElAMo7XD5
         PWYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=+LI0KBwAk3BMW2xOdAZUC5pTG0A91TET0yqnqWZmInE=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=jCyr6GDNMXBnNW3GbCH53S63c2L1yQN4B51Cq+oGD8DCi0l6cK6b1giLQsTBUCSuTA
         ihG1ddDlpy1XBSjXhKQ+zPPMif3gl5QSetk9mUERlhOkWe3s3xE9fkHI+PoiK1ru7bXb
         Ju3FOHOMq5UdzcsAOfIkVR0HkMDcqMKVtAyrg7J+ARwXGWCD1mUof2kAN63vQgCsre02
         WK3LK5yzElCS5gBqIGBxW3CL6/aFT7UsygRmzyoQe6O3tHcUjZ0lqT/JSBa0elQINGuS
         s6mgVg5stDxAHoz/a/2bOMrH2otYSfy3c68dsBzitp21rbZh7WtZzZ1gjH13rhZRsdeu
         1ULg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-79f03bab589si312166885a.580.2024.07.07.07.48.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jul 2024 07:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-664-ZQrI_z22NGiF30T5Xp9kVA-1; Sun,
 07 Jul 2024 10:48:14 -0400
X-MC-Unique: ZQrI_z22NGiF30T5Xp9kVA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EC7581955F43
	for <blinux-list@gapps.redhat.com>; Sun,  7 Jul 2024 14:48:13 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DC8251955F3B; Sun,  7 Jul 2024 14:48:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA0341955E83
	for <blinux-list@redhat.com>; Sun,  7 Jul 2024 14:48:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3CBA71955F45
	for <blinux-list@redhat.com>; Sun,  7 Jul 2024 14:48:13 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-246-GyWia_41MtyC5thWK3D97A-1; Sun, 07 Jul 2024 10:48:07 -0400
X-MC-Unique: GyWia_41MtyC5thWK3D97A-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id 62F3F1380491
	for <blinux-list@redhat.com>; Sun,  7 Jul 2024 10:48:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sun, 07 Jul 2024 10:48:07 -0400
X-ME-Sender: <xms:p6qKZqU2Esno4BH-q7O-KFAqdKYogvGdVcHTtF95065o-tYgfCgWNQ>
    <xme:p6qKZmme67cHxtd-zVW2eDzteC2LFHAKh0x0eEHmXYeNvc0UWD89Odhcg5a2Dw_wB
    3jZRVuZ8XaOzyH7zCs>
X-ME-Received: <xmr:p6qKZuYg0Q1xcabk-7HAFUrDEVXGCzKzaaItC7cPaTI6V0Yd_EJQdz1ZzMjhdDCbQ32kMJKnlHpNhvWtIPpzqtiyyb35LfZ8a6Y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvdehgdekvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghr
    thcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrg
    htthgvrhhnpeejffffudejleeuffeivedtieettedtkefggfekvdeujeetkedtheefhffh
    vdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    gthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:p6qKZhUShdKlX1s0dUVrXM0UkT7WCTE2U_Zv29e95WW5-ASfx8suFA>
    <xmx:p6qKZklVh07znrtRgI_83llPlI_iB6zxz2OikfcAZ1iys-Dpp9yeYQ>
    <xmx:p6qKZmeCcXT5XrNPhR8UhLjqDltD9lOuA0IU27LfPxI76zwKHbAOkw>
    <xmx:p6qKZmGhDotUyM-JkdatCZiL-0m6eufV0BCh0QJTDLUwzbPlvdVggA>
    <xmx:p6qKZgtrwozKGjAzfuwSwN-h22EZXStmCsNKOEv_AhMj395MrESGOkTa>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Sun, 7 Jul 2024 10:48:06 -0400 (EDT)
Date: Sun, 7 Jul 2024 07:48:05 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Is Any1 Useing Mary in Linux for Speech?
Message-ID: <a8e6db16-d190-6724-0be2-ae1bb2ce5406@hubert-humphrey.com>
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

Hi All: I would like to try Mary or what might be called "Open Mary"? There 
seem multiple avenues for grabbing it from, but many lead back to an old github 
page. Mary requires a much older java which we would need to put in a docker. 
Anyway, I hope some1 here has actually installed Mary-and-can please inform in 
how? Sure an easiest was ajusting spd-conf. Thanks so much in advance for any 
guidance.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

