Return-Path: <blinux-list+bncBC3NDNGRUAMRBHGVWCXAMGQEM3AFWNQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3548541A3
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 03:51:10 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-42bff6e8630sf51825311cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 18:51:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707879069; cv=pass;
        d=google.com; s=arc-20160816;
        b=PNuH+GXfqjV2KTfBiP9n/+5GJfqgdPSJkmZx/g0uOyK9N159JlS7oOu0aidPMVCwz9
         Xgld79IJQNLnX76pssBHz4bu9jOSWEGz35b4DuzI9xsb0xpBXhjUXBWgY4IIeTMIz1mM
         Q86vKj62ylyN0hR81kWeTe5nAWYsGjK/FAqIai9Lfy+1BfQ/Qm/R8dA09cgY5M4YgC1X
         mXQ5rrZ6BnhLLOkPBsRD1KIjSIn+Tx/rBjPfChaI7uGnkWA7Deq2xBty74102RK0tSSl
         pJZHzUewtnyjvJ8Ce4f+vFrtzJe6JMf/8XoL5Ncy5/rI6rR6sNMIpF98QwU3J4T+9l0n
         9LHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=oRsRp/Jd7AUwGPckEWQYK2bSQh7FcgplTllxznlJJGo=;
        fh=QYgID4V8F9TNfZee+aDeOhnePZXVLba+SrHUdg/qEPE=;
        b=YPoBrtG12Ia/ZHMThg5sGb1km/bl2wx1IHwqyEYidv+yb7oTMR+q3KFoSkUxMs0ZGf
         qptxXUfYr9jK8J0Y4d6X+GVMTxpI5NDVEBImESRrtSkwabGIUiGNXsedwF6UkfJrIVQv
         OCn2v/8eYqvExGhvoaaJiB+shph/qoJ7KEAHm0xNyQ3tWT1/LAp/lxeOwrk7ABvQ4E9z
         qUKJzvT5UvGv0+in1pHwArg0anfcd5CVIeN3PSNbbVwhjVFx67oDKCG5cF/6cgmQi/aC
         r9ZMmuu3LuHnRcGPOy9UKx2woq0ZHEAyO+c5mYk3MytIrbw6QhyFNxG8EtLUhvXGl9Bx
         MA9A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707879069; x=1708483869;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oRsRp/Jd7AUwGPckEWQYK2bSQh7FcgplTllxznlJJGo=;
        b=RyOGK4Kq1RzdQPVtBoz3Ol5hvqjc5MErikt1S/nhRwX0kr2CoXbJurnCUbhCRBzZvm
         CmTOSpafuAXEBcVjIQpxphATTUf4rBlGGakiFk0TaCn8o1Hb3dIta589VJ0UWDpZj0In
         XtpKXMKBR6vfLp8MccNaLEMHV6ac9g+rDDhyiWTG/vzooNhHrZPgJK5S50Q+ddTQTvve
         5W/jJYIjLmPtHzg98u75l+cAHzPuehLX82OhH9b1IRKrn8prGaUatYSSI8qiLh37yQIL
         yd39BrWGlWE7FXywMe6GZQlDGZyCk9W8Rz8jrhLaEq8ZQ4Q/TgGauAJWdI2ToO+ZEjit
         0yCw==
X-Forwarded-Encrypted: i=2; AJvYcCWDDqAPx6qw3I42omSUWUXmMqKRkaX2zOk62ZEtHHN11jFjt+wpeTy5Fp3OH3Cprv7dBLADSLNU/M+1psg5VPH1MscwAWl0cJlC
X-Gm-Message-State: AOJu0YxnNlnIc41G1Q36TTDzaEH24HMM/fcBASy5uSQdMOYi7sy7mHds
	wX04pYD1gCnIInP08uzwelzEvoAcQ8UZMJSNNd3pg7zdS2D7+vfIg+xb+gN2RZY=
X-Google-Smtp-Source: AGHT+IH7z/3N76h95yS0yTNopDiTMvXO3BHK0zTW/IeCCZPssCzGFjEWoomrRXoopULxS1Wml2diHQ==
X-Received: by 2002:a05:622a:1391:b0:42d:73e5:e11a with SMTP id o17-20020a05622a139100b0042d73e5e11amr1554703qtk.57.1707879068822;
        Tue, 13 Feb 2024 18:51:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5c4e:0:b0:42c:56cb:c3a2 with SMTP id j14-20020ac85c4e000000b0042c56cbc3a2ls6789646qtj.0.-pod-prod-01-us;
 Tue, 13 Feb 2024 18:51:08 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVM0AVWni9Kp02yCXBXaIZcB68xBJ8Z6ruIOtNKdQgrmMI1vqGPyDJ8nkw12BfnGm5kYYxuQkOZ99k0bOwVe3p3e0kt3ZC/u7AoijBI
X-Received: by 2002:a05:620a:170d:b0:787:24a7:78ff with SMTP id az13-20020a05620a170d00b0078724a778ffmr2027274qkb.11.1707879067973;
        Tue, 13 Feb 2024 18:51:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707879067; cv=none;
        d=google.com; s=arc-20160816;
        b=ynkoOB4QT+rd+G2n1pbY4wIzAoAWfeqN/UFdsr9pjKw0EJLglVlRwEPUT80WTKZiAu
         UPfHKkxCrzGQkgT906S5H3kIClhnORe/EJnQNx15hjOobVsZ2/DQwMpPCi2cZ9LCPpge
         lLtwmzE7GhA9n0A6HWZv3HCHlNTbP+skg3InmkvSiBCRLMOlvo+Q83LmlXExncGSOMq9
         oAQkVUWH+Hx9Q5bPY4dN7VVXNHjLQSwET2VX3Rw0hs2zNTh1CgJUkhANqtwrvU6SWiOa
         onnwEosqwkx45tDZbUPaGjiaQnWQZ6ehiAuIE9555GtpxZ1y9s13/99U5i7C5F4RZih7
         zRXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=lBD7QVLPT1ReDf4fIRCPYBlr5aVIpmkOPbHhD0MYL0U=;
        fh=KQNQKQQrLmXgXprJvB439V7G7ON5wbK93lfIFT29+YQ=;
        b=vRHVlwRDMMgkGHzfUnLd3w6VJSHvu+l7Dd2V8jk/5V3T695/6Wau2/YX4PkcpO0ehs
         M29qOvm4jQmsvV6QVsrLeaD80jrNW7XlVABwL8j5oQj8AlBWdGfyLsg+Z8pSTsmYNdLf
         Yltf5a+wZ5B2Px+6Bw2dh8y0FCZFEKfWEC6d7vh+TFPfu+UXlDD76ywmlliohOvIQHVP
         oVWtDwZnCz7pWWcxbtmrfnBktCJyOCy5U65JIdybEMCDvhTuT+ObyiV58aPUwcCbOmKo
         bI2Lgyl5+5I60wsSPbeQXAT7wLC8frhMntnTJpqucyMH3xZQsotr2sHV6Acrpl/M+OVh
         shsw==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Forwarded-Encrypted: i=1; AJvYcCWUHcUxYbF8ndFPn2YEdp58Is2qhbQM4aEChP+bxIZamtMD0PLcmb0S5MnRPXTbiF54gnalvVljE7qnRTrGdmrgR/iy9x9YJa0nkQGf
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id t20-20020a05620a0b1400b00785d845bdf9si5643277qkg.658.2024.02.13.18.51.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 18:51:07 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-367-PRSA98KZOsCT13LdQ1zfmQ-1; Tue, 13 Feb 2024 21:51:06 -0500
X-MC-Unique: PRSA98KZOsCT13LdQ1zfmQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46150185A782
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 02:51:06 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 42D33200B2D7; Wed, 14 Feb 2024 02:51:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A574200AE71
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 02:51:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5726299E74B
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 02:51:05 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-607-45pSSBQMOceCoLc54d5VxA-1; Tue, 13 Feb 2024 21:51:03 -0500
X-MC-Unique: 45pSSBQMOceCoLc54d5VxA-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfout.nyi.internal (Postfix) with ESMTP id 930C713800FF;
	Tue, 13 Feb 2024 21:40:39 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Tue, 13 Feb 2024 21:40:39 -0500
X-ME-Sender: <xms:JyjMZWOYL1SzI33Z0cUhopvEkfzzPGVrL-yAnCSu3YjB9yUTfa8MQg>
    <xme:JyjMZU_wZjgGA8dMHTtUe2Ab5Fql4MbxZ4LIsEAy75tzp3AMikUkOLUUbVgiM0A17
    a_btgKJ4qAkLgR-pwE>
X-ME-Received: <xmr:JyjMZdSj74EYEQECjdUGQLn8ZqRlxVvN7FIh2ZFDZm6A2kM9Mc1j-2GUwfApoCtOLB0kZM3tZRS1hcTgJj_zinDymmn7hQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdehudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcu
    jfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeefffff
    feffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:JyjMZWuljMQzE4XUdz9GRqhFoXeRf7wlWX5ijLgKsXaHy4x96c7ZJw>
    <xmx:JyjMZedUaJEdC4sga6pghvHDfio_4Ckwe-VHLi4sUehh6YWVi1vHCw>
    <xmx:JyjMZa1Mjr1i74-0eALWOYl95ajue-x_mLmPFS7EUdqg_P6BF0Blgg>
    <xmx:JyjMZfp3XAYWT2wNdz9vLQdggeVMztY4fwvRwQTv8DLYHrKYovbkgw>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 21:40:38 -0500 (EST)
Date: Tue, 13 Feb 2024 18:40:37 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh  command line question?
In-Reply-To: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
Message-ID: <5c7007d6-dc29-7872-7fb9-d4d7224ac1ce@hubert-humphrey.com>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

Hi Karen: While I am not aware of a commandline option, but I bet there is, 
what I would do is to cd over to dot ssh and delete the specifc item which you 
would like to change. I think after that, when you ssh in there, it will prompt 
for adding that kee. And I just checked to make sure, known hosts is a file, 
but certainly that file will not read well. At the very least, I would make 
another copy before plunging in.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

