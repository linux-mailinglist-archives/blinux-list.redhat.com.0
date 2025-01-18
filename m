Return-Path: <blinux-list+bncBDP7P6HU4IERBPP2V66AMGQE5ZFQFYQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C24A15E8F
	for <lists+blinux-list@lfdr.de>; Sat, 18 Jan 2025 20:13:03 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-468f6f2f57asf38065771cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 18 Jan 2025 11:13:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737227582; cv=pass;
        d=google.com; s=arc-20240605;
        b=A3jlE3ZtPNuWG0XA9S50EiIMP/pZvPdnlLrYXxl7pbPV7lmKRocSDuuq0venCCHgIl
         GONV5MK7yfkXxgfwK00GsnB5ypK2gL8dfcBQ6cef6TqK2gaNhDYGp34C0Dhk6O4XBH8c
         3HJQGDBR1q0T9r/6SzI+FK2tfObx9Ruq7ooyDW7P2u8MYIHxLhIfzTZ5Xz1ouFbDmKP2
         /3+fQGcX/iv+RpkiCOuKJX9iulsfBUjF7i5g+oa+0dL4E7UxtDC1Idq8KZURkLCB+/J3
         gIHOJxhkyjRQ7Q4rQbHc9MzR8VVcskc9CQ++v6qmZKGdKUE63rAeBmcmSP/0p53wRmnt
         ha0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version:to
         :from:delivered-to;
        bh=ZhYFvliQNz4ZitmstHeuLebXlKkTMzXvSSJ3NS+tebw=;
        fh=zkJLepM0zGe69d4s123l0ia2lDIqrJ+qZWxt1woMuII=;
        b=Vb2GWX/GUgVn+u5oA8BZ/uvQKS8n2ql2oAKPJI6rAHUTnSd9g6Y0LkXqXiEA1KcpHi
         7Xb4S3LLh5jaNQfZjvWDPosa8Vi8wUmj4n8VYJwmvHSbAh/HFGxCbJDl6yTfWr2Kavwf
         rIYjuBhnZ9LLQlFotzjxn8fJnUDWD3O+wkc86CiwqyAvcZorQauqkGYyaEPKNqRDGTGI
         tc5Te0DjF7hJVRGcrww1dpb4ep5siG5Q03iXRSawD9bvZ4ze+MfwzDuzPSPzOMcg11JG
         lUCYLP8PJQuGWKYg7fK2Nt8zKG9W+XUd8mQV3s1NbYx7VV66SW3jSViQ00ZDhnnffhDf
         mMjQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737227582; x=1737832382;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:to:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZhYFvliQNz4ZitmstHeuLebXlKkTMzXvSSJ3NS+tebw=;
        b=Dwsqqisf+PruK9mc1UNrmi9STefa0BXjU6ZA/vtHqNUv+Xx3s9H1FLQyXotbNwRJAI
         fZN46k+W/kDa8CKNvbTd+xK8N8z31BPvZGA9kbpUCsr0xRsgQg7cFCLcSdvqgrNTfwUP
         nhU0ikYh1QSmF01WtVCD2bJ4dFrwD2BYfNQ3ICWwWGXeRjzk6RwknTX965Nn++HeoixZ
         v74o6lICreUpR8d1pyCM4soGiTIdaDHh3RfNPbJP/5lIOXyGa6M1ev4VxOTpj0MelpSX
         ZYkJ6Foht9rjTvo+IJ6wGuZ5gjSqCqzE4VP3bg/uLJzL/1q2Io7ctIPd/B5bu5o9+LRC
         8UbA==
X-Forwarded-Encrypted: i=2; AJvYcCX7drt/FNWMFQE0NTqEiKU2zrLpq821lhjSfqBZgPI35Jak0n3d3jt80SrPOFAXbxmADuHjlg==@lfdr.de
X-Gm-Message-State: AOJu0Ywn48RxvPEOD92q+UJZzsBevaDh1aP00e0epmVAAl8AiXzubB+S
	UwveLy4C+pL3QD2Tit/KUmesbBWoiBzETHt73rQWn5QWHWfU65ckTlH/NVf/TBM=
X-Google-Smtp-Source: AGHT+IFLtaKcXj+sjaapgmUWhCbKKDpn6qHwSZQMqfOz/txoM4h3hNGlNeS8O0zFPp3AbVmXbLycoA==
X-Received: by 2002:ac8:5a55:0:b0:466:b287:78a with SMTP id d75a77b69052e-46e12a1e35fmr113685331cf.3.1737227582177;
        Sat, 18 Jan 2025 11:13:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:478b:0:b0:46b:c428:f57f with SMTP id d75a77b69052e-46e02dfd9edls47236021cf.1.-pod-prod-08-us;
 Sat, 18 Jan 2025 11:13:01 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU9OOfKH5aIfv6ayOUEgubP043wKJbeF/IR7D6PEmX6hrJmSSTA78BaSVRyuwp0onb+EVwiqczPaw0PVA==@gapps.redhat.com
X-Received: by 2002:a05:620a:40c8:b0:7b7:142d:53b3 with SMTP id af79cd13be357-7be63252ac1mr1316747085a.55.1737227581021;
        Sat, 18 Jan 2025 11:13:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737227581; cv=none;
        d=google.com; s=arc-20240605;
        b=CAreJBHX5SaOuO5cgSlP9To/TqUdfUhlx0jWtwtNnW6zw29Qpm159ZCp6cqePiCssv
         bVliCEUhThlAOLMF9eolN9WDOQjsNlAkrHcIE0NzWxB+ctdCbNrE6SVRZq700AsGcVEJ
         9j6rRuPobXukKwmldXzGPj5B0FPV9pweuYXaMVRzag3gcCaJjEjtA3zzrxNsP02UR2iV
         gSGOsgpo1ncxmt8c/zWR5nOWVIuG+OUR8AchJEkt2/p3SKDM/za7KRBMoF+p0ULNMcum
         lmuy8NvTR+pL2QTuT9bUrYeuyMr+MZj+aDIS0S9ezYQXfKG1Yh6NBPSHOALoKXDDXbsl
         JFeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:to:from:delivered-to;
        bh=F6DVUrPSFBq/n0R9NSjIl7xPEgIOMe8ogU7D0jSWQRQ=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=HuFqcu60V/cEhXhlVEiZm7d5aWisytdMC+f1oKQT4ylezL+PqEVebqWcr25mgRaBd1
         McpK85RZyT1njCCGsiqWEZTct7EEF9qKJy3wZgjkyAwjFkNGaPijv+xJe+/SZli/Pqi7
         c2UsSaIkTz5qVI63dnDaN3ThV3Hw4Smtg4yKL8HvtCxy2NknP/NXwxmVWiie4ivl5W48
         YUG5xHEtMNNZOi9WIMnw9kwYRQhTYZMkWVT/kuxnxcSSiERYISrP2gk625cEMSEBKw9F
         rbRbFUY2OTjvhCvO8yXDUtvl5p/RyvlKO1HqKPYB1rG+xo/x2+ADfA8ldnORWJcim02Q
         6HnA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7be614ef44dsi562738985a.587.2025.01.18.11.13.00
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 11:13:01 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) client-ip=65.20.63.204;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-568-zmvRF0RbN_eINMkEzP_r1Q-1; Sat,
 18 Jan 2025 14:12:59 -0500
X-MC-Unique: zmvRF0RbN_eINMkEzP_r1Q-1
X-Mimecast-MFC-AGG-ID: zmvRF0RbN_eINMkEzP_r1Q
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8EABA1956083
	for <blinux-list@gapps.redhat.com>; Sat, 18 Jan 2025 19:12:58 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 89B233003FD2; Sat, 18 Jan 2025 19:12:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 86E1C3003E7F
	for <blinux-list@redhat.com>; Sat, 18 Jan 2025 19:12:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 22988195608B
	for <blinux-list@redhat.com>; Sat, 18 Jan 2025 19:12:58 +0000 (UTC)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai
 (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.204]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-70-otdnZzkGNcSv4RhhofW8qQ-1; Sat,
 18 Jan 2025 14:12:55 -0500
X-MC-Unique: otdnZzkGNcSv4RhhofW8qQ-1
X-Mimecast-MFC-AGG-ID: otdnZzkGNcSv4RhhofW8qQ
X-RG-VS-CS: clean
X-RG-VS-SC: 10
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 67715D1F03A0D401
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudeihedguddvudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucfgmhhpthihuchsuhgsjhgvtghtucdluddtmdenucfjughrpefhvfggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepteekfeegjefgfeetjeeltdevkeelfedvudetheefjedvgffgfeekieelhfetfeefnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtie
X-RazorGate-Vade-Verdict: clean 10
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 67715D1F03A0D401 for blinux-list@redhat.com; Sat, 18 Jan 2025 14:12:55 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tZEFV-0004QR-0d
	for blinux-list@redhat.com;
	Sat, 18 Jan 2025 13:12:49 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
MIME-Version: 1.0
Date: Sat, 18 Jan 2025 13:12:49 -0600
Message-Id: <E1tZEFV-0004QR-0d@wb5agz>
X-Mimecast-MFC-PROC-ID: 27sF1PrEMEEMm_ES22K6871Ww9_Bsu7yMoqoyTwWdSg_1737227575
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: FmyBJWokDLnzU5TSCTf_4NHr7a6U--0t7hkNLeLVLr4_1737227578
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <17013.1737227569.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

Subject Eureka!  I Solved My Speech Problem!
--------
I accidentally figured out what was going on with the babbling
multiple voices simultaneously speaking all my output on the
command consoles.

	It was something stupid I did but not recently and it
finally reared it's head when I was trying to get fenrir
installed for the command-line consoles on an orca system running
ubuntu.

	Some time ago, I had installed espeakup in hopes of
making the command-line consoles talk which they never did.

	After running the pipewire-pulse script which worked, the
babble started.  Both fenrir and espeakup were chiming in and
working except I only wanted one to work and both together made
for a very dysfunctional experience.

	I'd like to say that I used some hot-shot IT skills to
fix things but it was a happy accident. more than anything else.

	I happened to hit the key next to the Scroll Lock key
which is also the print-screen key and one of the voices said
"You killed speakup.".

	I said, "Speakup?  There is no speakup here."

	I then searched to see if orca uses espeakup.  It
definitely does not but it uses the espeak synth.

	After some careful thought, I uninstalled espeakup and
the only voice now is espeak via fenrir.

	I need to slow fenrir down a bit but now I get one voice
in the command consoles and all is well.

	Thank those of you who helped, especially Kyle, but I was
running out of things to try.  I found all the instances of
pipewire.conf and they didn't hold anything that looked
suspicious   but now it's good and I can turn off the older I86
box which is useful but unnecessary now.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

